import React from 'react'
import Button from '../Button'
import { useParams, Link } from 'react-router-dom'

const HREdit = () => {
    const {id} = useParams
    console.log(id)
    const backButton = <div style={{ fontSize: "12.5px", display: "inline" }}>Cancel</div>
    return (
        <div className="main-content" >
            <div className="item" style={{ fontSize: "15px" }} >
                <Link to="/employee"><Button text={backButton} /></Link>
                <div style={{ width: "100%", display: "block" }}>
                    <h2>Employee <Button text="Save" /></h2>
                </div>

                <table >
                    <tbody>
                        <tr>
                            <td><b>SIN:</b><br /><input type="text" style={{ width: "90%", height: "30px" }} placeholder="SIN..." /></td>
                            <td><b>Firstname:</b><br /><input type="text" style={{ width: "90%", height: "30px" }} placeholder="Firstname..." /></td>
                            <td><b>M.Initial:</b><br /><input type="text" style={{ width: "90%", height: "30px" }} placeholder="M.Initial..." /></td>
                            <td><b>Lastname:</b><br /><input type="text" style={{ width: "90%", height: "30px" }} placeholder="Lastname..." /></td>
                        </tr>
                        <tr>
                        <td><b>Gender:</b><br /><input type="text" style={{ width: "90%", height: "30px" }} placeholder="Gender..." /></td>
                            <td><b>DOB:</b><br /><input type="text" style={{ width: "90%", height: "30px" }} placeholder="DOB..." /></td>
                            <td style={{ columnSpan: "1" }}><b>Telephone #:</b><br /><input type="text" style={{ width: "90%", height: "30px" }} placeholder="Phone..." /></td>
                            <td colSpan="2" ><b>Address:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Address..." /></td>
                        </tr>
                        <tr>
                            <td><b>Position:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Position..." /></td>
                            <td><b>Start date:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Start date..." /></td>
                            <td><b>Salary:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Salary..." /></td>
                            <td><b>Benefits:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Benefits..." /></td>
                        </tr>
                        <tr>
                            <td colSpan="2" className="special-table" >
                                <h3>Dependents: </h3>
                                <table >
                                    <tbody>
                                        <tr>
                                            <td><b>Dependent</b></td>
                                            <td><b>Relationship</b></td>
                                        </tr>
                                        <tr>
                                            <td>Martha</td>
                                            <td>Mom</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Dependent:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Dependent..." /></td>
                            <td><b>Relationship:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Relationship..." /></td>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>
    )
}

export default HREdit
