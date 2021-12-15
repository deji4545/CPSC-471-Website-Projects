import React from 'react'
import Button from '../Button'
import { useParams, Link } from 'react-router-dom'

const ReceptionEdit = () => {
    const { id } = useParams()
    console.log("Helo"+id)
    const backButton = <div style={{ fontSize: "12.5px", display: "inline" }}>Cancel</div>
    return (
        <div>
            <div className="main-content" >
                <div className="item" style={{ fontSize: "15px" }} >
                   <Link to={{ pathname: `/reception` }}><Button text={backButton} /></Link> 
                    <h1>Patient </h1>
                    <table >
                        <tbody>
                            <tr>
                                <td><b>Health card #:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Healthcard #..." /></td>
                                <td><b>Firstname:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Firstname..." /></td>
                                <td><b>Lastname:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Lastname..." /></td>
                                <td><b>M. Initial:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="M.Initial..." /></td>
                            </tr>
                            <tr>
                                <td><b>Gender:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Gender..." /></td>
                                <td><b>DOB:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="DOB..." /></td>
                                <td><b>Telephone #:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Telephone #..." /></td>
                                <td><b>Emergency Contact:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Emergency contact..." /></td>
                            </tr>
                            <tr>
                                <td colSpan="2"><b>Address:</b><br /> <input type="text" style={{ width: "95%", height: "30px" }} placeholder="Address..." /></td>
                                <td><b>Insurance Provider:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Insurance provider..." /></td>
                                <td><b>Ward:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Ward..." /></td>
                            </tr>
                            <tr>
                                <td><b>Outstanding charge:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Charge..." /></td>
                                <td colSpan="2"></td>
                                <td><div className="add-button"> <Button text="Save"/></div></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    )
}

export default ReceptionEdit
