import React from 'react'
import DoctorItem from './DoctorItem'
import Button from '../Button'
import { Routes, Route, Navigate } from 'react-router-dom'
import LoginPage from '../Login'

const Doctor = () => {
    const onLogout= ()=>{
        sessionStorage.setItem('type',null)
        window.location.reload();
        console.log('under the water')
    } 

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
            Search: <input type="text" placeholder="Search..." />
            </div>
            <DoctorItem />
            <DoctorItem />
            <DoctorItem />
            <DoctorItem />
            <DoctorItem />
            <DoctorItem />
            
        </div>
    )
}

export default Doctor
