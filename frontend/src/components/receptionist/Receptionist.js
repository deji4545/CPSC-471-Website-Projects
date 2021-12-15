import React from 'react'
import ReceptionistItem from './ReceptionistItem'
import Button from '../Button'
import { Link } from "react-router-dom";

const Receptionist = () => {
    return (
        <div className="main-content">

            <div className="search-box" >
                Search: <input type="text" placeholder="Search..." />
                <div className="add-button"><Link to="/edit/reception"><Button text="Add Patients" /></Link></div>
            </div>
            <ReceptionistItem />
            <ReceptionistItem />
            <ReceptionistItem />
            <ReceptionistItem />
            <ReceptionistItem />
            <ReceptionistItem />

        </div>

    )
}

export default Receptionist
