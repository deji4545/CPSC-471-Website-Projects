import React from 'react'
import Button from '../Button'
import { Link } from "react-router-dom";

const DoctorItem = ({patient}) => {
    const id =patient.healthcard_no
    return (
        <div className="item">
            <table>
                <tbody>
                <tr>
                        <td><b>Healthcard #:</b><br /> {patient.healthcard_no} </td>
                        <td><b>Name:</b><br />{patient.fname +" "+ patient.m_initial+ " "+patient.lname}</td>
                        <td><b>Gender:</b><br />{patient.gender}</td>
                        <td><b>DOB:</b><br />{patient.dob.substring(0,10)}</td>
                    </tr>
                    <tr>
                        <td style={{ columnSpan: "1" }}><b>Telephone #:</b><br />{patient.phone_number}</td>
                        <td colSpan="3" ><b>Address:</b><br /> {patient.address}</td>
                    </tr>
                    <tr>
                        <td><b>Ward:</b><br /> {patient.ward_no} </td>
                        <td><b>Insurance provider:</b><br />{patient.insurance_provider}</td>        
                    </tr>
                    <tr>
                        {/* <td><Link to={{pathname:`/edit/doctor/${id}`}}>
                            <Button text="Edit information" />
                        </Link></td> */}
                        <td><Link to={{pathname:`${id}`}}>
                            <Button text="View Details" />
                        </Link></td>
                    </tr>
                </tbody>
            </table>
        </div>
    )
}

export default DoctorItem
