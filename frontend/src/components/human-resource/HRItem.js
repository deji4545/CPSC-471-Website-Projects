import React from 'react'
import Button from '../Button'
import {Link } from 'react-router-dom'
const HRItem = () => {
    const id = 1245
    return (
        <div className="item" style={{ fontSize: "12.5px" }}>
            <table >
                <tbody>
                    <tr>
                        <td><b>ID:</b><br /> Data </td>
                        <td><b>SIN:</b><br />Data</td>
                        <td><b>Name:</b><br />Data</td>
                        <td><b>Gender:</b><br />Data</td>
                    </tr>
                    <tr>
                        <td><b>DOB:</b><br />s</td>
                        <td style={{ columnSpan: "1" }}><b>Telephone #:</b><br />Data</td>
                        <td colSpan="2" ><b>Address:</b><br /> Data</td>
                    </tr>
                    <tr>
                        <td><b>Position:</b><br /> Data</td>
                        <td><b>Start date:</b><br /> Data</td>
                        <td><b>Salary:</b><br /> Data</td>
                        <td><b>Benefits:</b><br /> Data</td>
                    </tr>
                    <tr>
                        <td><Link to={{pathname:`/edit/hr/${id}`}}><Button text="Edit information" /></Link></td>
                        <td><Button text="Delete" /></td>
                        <td><Link to={{pathname:`/employee/${id}`}}><Button text="View details" /></Link></td>
                    </tr>
                </tbody>
            </table>
        </div>
    )
}

export default HRItem
