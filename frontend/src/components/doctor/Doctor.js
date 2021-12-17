import React,{useState,useEffect} from 'react'
import DoctorItem from './DoctorItem'
import Button from '../Button'
import { Routes, Route, Navigate } from 'react-router-dom'
import LoginPage from '../Login'

const Doctor = () => {
    const [patients, setPatients] = useState([])
    const [search, setSearch] = useState('')


    useEffect(() => {
        if (sessionStorage.getItem('type') !== 'nurse'&&sessionStorage.getItem('type') !== 'doctor') {
            return null
        }
        const getPatients = async () => {
            const tasksFromServer = await fetchPatients()
            //   console.log(tasksFromServer)
            setPatients(tasksFromServer)

        }

        getPatients()
    }, [])

    const fetchPatients = async () => {
        const res = await fetch('http://localhost:3000/api/doctor/patient', { method: "GET" })
        const data = await res.json()
        console.log(data)
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
        <DoctorItem key={index} patient={patient}/>))

    const onLogout= ()=>{
        sessionStorage.setItem('type',null)
        window.location.reload();
        console.log('under the water')
    } 
    // PLEASE UMAR REMEMBER TO UNCOMMENT
    if (sessionStorage.getItem('type') !== 'doctor' && sessionStorage.getItem('type') !== 'nurse' ) {
        console.log('here')
        return (
            <Routes>
                <Route path="/" element={<Navigate replace to="/" />} />
                {/* <Route path="*" element={<Navigate replace to="/" />} /> */}
            </Routes>
        )
    }
    return (
        <div className="main-content"style={{marginTop:"25px"}}>
        <div><Button text="Logout"  onClick={onLogout}/></div>
            <div className="search-box">
            Search: <input type="text" placeholder="Search..." value={search} onChange={(e) => setSearch(e.target.value)}/>
            </div>
            {patients.length > 0 ?
                data
                : 'Nothing to show here'}
            
        </div>
    )
}

export default Doctor
