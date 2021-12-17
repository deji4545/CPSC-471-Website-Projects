import { useState, useEffect } from 'react'
import ReceptionistItem from './ReceptionistItem'
import Button from '../Button'
import { Link } from "react-router-dom";
import { Routes, Route, Navigate } from 'react-router-dom'


const Receptionist = () => {
    const [patients, setPatients] = useState([])
    const [search, setSearch] = useState('')

    useEffect(() => {
        if (sessionStorage.getItem('type') !== 'reception') {
            return null
        }
        const getPatients = async () => {
            const tasksFromServer = await fetchPatients()
            //   console.log(tasksFromServer)
            setPatients(tasksFromServer)

        }

        getPatients()
    }, [])


    const deletPatient = (id) => {
        fetch('http://localhost:3000/api/reception/patient/' + id, { method: "DELETE" })
            .then(response => response)
            .then(data => {
                window.location.reload(); setPatients([])
                console.log(data)
            });

    }
    const fetchPatients = async () => {
        const res = await fetch('http://localhost:3000/api/reception/patient/', { method: "GET" })
        const data = await res.json()

        return data
    }


    const data = patients.filter(
        (val) => {
            const name = (val.fname + "" + val.lname + "" + val.m_initial).toString().toLowerCase()
            const stuff = search.toString().toLowerCase()
            if (search === "") {
                return val
            } else if (name.includes(stuff)) {
                return val
            }
            return null
        }
    ).map((patient, index) => (
        <ReceptionistItem key={index} patient={patient} deletePatient={deletPatient} />))

    const onLogout = () => {
        sessionStorage.setItem('type', null)
        window.location.reload();
        console.log('under the water')
    }

    if (sessionStorage.getItem('type') !== 'reception') {
        return (
            <Routes>
                <Route path="/" element={<Navigate replace to="/" />} />
                {/* <Route path="*" element={<Navigate replace to="/" />} /> */}
            </Routes>
        )
    }

    return (
        <div className="main-content" style={{ marginTop: "25px" }}>
            <div><Button text="Logout" onClick={onLogout} /></div>

            <div className="search-box" >
                Search: <input type="text" placeholder="Search..." value={search} onChange={(e) => setSearch(e.target.value)} />
                <div className="add-button"><Link to="/edit/reception/add"><Button text="Add Patients" /></Link></div>
            </div>
            {patients.length > 0 ?
                data
                : 'Nothing to show here'}

        </div>

    )
}

export default Receptionist
