import React from 'react'
import Button from '../Button'
import { Link } from "react-router-dom";

const DoctorItem = () => {
    const id =123
    return (
        <div className="item">
            <table>
                <tbody>
                    <tr>
                        <td><b>ID:</b><br /> Data </td>
                        <td><b>Name:</b><br />Data</td>
                        <td><b>Gender:</b><br />Data</td>
                        <td><b>DOB:</b><br />Data</td>
                        <td><b>Blood type:</b> <br />Data</td>
                        <td><b>Genotype:</b><br />Data</td>
                        <td><b>Height:</b><br />Data</td>
                        <td><b>Weight:</b><br />Data</td>
                    </tr>
                    <tr>
                        <td><b>Body temperature:</b> <br />Data </td>
                        <td><b>Blood sugar:</b><br />Data</td>
                        <td><b>Blood pressure:</b><br />Data</td>
                        <td><b>Ward:</b><br />Data</td>
                        <td><b>Current illness:</b> <br />Data </td>
                        <td><b>Date of Diagnoses:</b><br />Data</td>
                        <td><b>Current treatment:</b><br />Data</td>
                        <td><b>Start of treatment:</b><br />Data</td>
                    </tr>
                    <tr>
                        <td><Link to={{pathname:`/edit/doctor/${id}`}}>
                            <Button text="Edit information" />
                        </Link></td>
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
