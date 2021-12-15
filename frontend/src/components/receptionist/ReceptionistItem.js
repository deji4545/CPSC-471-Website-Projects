import React from 'react'
import Button from '../Button'
import { Link } from "react-router-dom";

const ReceptionistItem = () => {
    const id =123
    return (

        <div className="item" style={{ fontSize: "12.5px" }}>
            <table >
                <tbody>
                    <tr>
                        <td><b>Healthcard #:</b><br /> Data </td>
                        <td><b>Name:</b><br />Data</td>
                        <td><b>Gender:</b><br />Data</td>
                        <td><b>DOB:</b><br />Data</td>
                    </tr>
                    <tr>
                        <td style={{ columnSpan: "1" }}><b>Telephone #:</b><br />Data</td>
                        <td style={{ columnSpan: "1" }}><b>Emergency contact:</b><br />Data</td>
                        <td colSpan="2" ><b>Address:</b><br /> Data</td>
                    </tr>
                    <tr>
                        <td><b>Ward:</b><br /> Data </td>
                        <td><b>Insurance provider:</b><br />Data</td>
                        <td><b>Outstanding charge:</b><br />Data</td>
                        
                    </tr>
                    <tr>
                        <td><Link to={{pathname:`/edit/reception/${id}`}}><Button text="Edit information" /></Link></td>
                        <td><Button text="Delete" /></td>
                    </tr>
                </tbody>
            </table>
        </div>

    )
}

export default ReceptionistItem
