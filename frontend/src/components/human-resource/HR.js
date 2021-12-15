import React from 'react'
import HRItem from './HRItem'
import Button from '../Button'
import { Link } from "react-router-dom";

const HR = () => {
    return (
        <div className="main-content">

            <div className="search-box" >
                Search: <input type="text" placeholder="Search..." />
                <div className="add-button"><Link to="/edit/hr"><Button text="Add Employee" /></Link></div>
            </div>
            <HRItem />
            <HRItem />
        </div>
    )
}

export default HR
