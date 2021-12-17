import React from 'react'
import Button from '../Button'
import {Link } from 'react-router-dom'
const HRItem = ({employee, deleteEmployee}) => {
    const id = employee.id_no
    return (
        <div className="item" style={{ fontSize: "12.5px" }}>
            <table >
                <tbody>
                    <tr>
                        <td><b>ID:</b><br /> {employee.id_no} </td>
                        <td><b>SIN:</b><br />{employee.sin}</td>
                        <td><b>Name:</b><br />{employee.fname +" "+employee.m_initial+" "+employee.lname}</td>
                        <td><b>Gender:</b><br />{employee.gender}</td>
                    </tr>
                    <tr>
                        <td><b>DOB:</b><br />{employee.dob.substring(0,10)}</td>      
                        <td colSpan="1" ><b>Address:</b><br /> {employee.address}</td>
                        <td><b>Position:</b><br /> {employee.job}</td>
                        <td><b>Salary:</b><br /> {employee.salary}</td>           
                    </tr>
                    <tr>
                        <td><Link to={{pathname:`/edit/hr/${id}`}}><Button text="Edit information" /></Link></td>
                        <td><Button text="Delete" onClick={ ()=>deleteEmployee(id) }/></td>
                        <td><Link to={{pathname:`/employee/${id}`}}><Button text="View details" /></Link></td>
                    </tr>
                </tbody>
            </table>
        </div>
    )
}

export default HRItem
