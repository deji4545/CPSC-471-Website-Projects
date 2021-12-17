import { useState, useEffect } from 'react'
import ReceptionistItem from './ReceptionistItem'
import Button from '../Button'
import { Link } from "react-router-dom";


const Receptionist = () => {
    const [patients, setPatients] = useState([])
    const [search, setSearch] = useState('')

    useEffect(() => {
        const getPatients = async () => {
            const tasksFromServer = await fetchPatients()
            //   console.log(tasksFromServer)
            setPatients(tasksFromServer)
        }

        getPatients()
    }, [patients])


    const deletPatient=(id) =>{
        fetch('http://localhost:3000/api/reception/patient/'+id, { method: "DELETE" })
        .then(response => response)
        .then(data => { setPatients([])   
                    console.log(data)});
    }
    const fetchPatients = async () => {
        const res = await fetch('http://localhost:3000/api/reception/patient/', { method: "GET" })
        const data = await res.json()

        return data
    }


    const data = patients.filter(
        (val) => {
            const name = (val.fname+""+val.lname+""+val.m_initial).toString().toLowerCase()
            const stuff= search.toString().toLowerCase()
            if (search===""){
                return val
            } else if (name.includes(stuff)){
                return val
            } 
            return null
        }
    ).map((patient, index) => (
        <ReceptionistItem key={index} patient={patient} deletePatient={deletPatient} />))

    return (
        <div className="main-content">

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
