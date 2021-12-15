import React from 'react'
import DoctorItem from './DoctorItem'


const Doctor = () => {
    return (
        <div className="main-content">

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
