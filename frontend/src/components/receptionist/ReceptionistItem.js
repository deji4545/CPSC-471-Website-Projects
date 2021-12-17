import React from 'react'
import Button from '../Button'
import { Link } from "react-router-dom";

const ReceptionistItem = ({patient , deletePatient}) => {
    const id =patient.healthcard_no
    // console.log(patient)
    return (

        <div className="item" style={{ fontSize: "12.5px" }}>
            <table >
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
                        <td colSpan="1"><b>Emergency contact name:</b><br />{patient.Efname +" "+patient.Em_initial+" "+patient.Elname }</td>
                        <td colSpan="1" ><b>Emergency contact relationship:</b><br /> {patient.Erelationship}</td>
                        <td colSpan="1" ><b>Emergency contact#:</b><br /> {patient.Ephone_number}</td>
                    </tr>
                    <tr>
                        <td><b>Ward:</b><br /> {patient.ward_name} </td>
                        <td><b>Insurance provider:</b><br />{patient.insurance_provider}</td>        
                    </tr>
                    <tr>
                        <td><Link to={{pathname:`/edit/reception/${id}`}}><Button text="Edit information" /></Link></td>
                        <td><Button text="Delete" onClick={ ()=>deletePatient(id) } /></td>
                    </tr>
                </tbody>
            </table>
        </div>

    )
}

export default ReceptionistItem
