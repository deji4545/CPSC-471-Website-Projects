import React from 'react'
import Button from '../Button'
import { Link,useParams } from 'react-router-dom'

const DoctorEdit = () => {
    const { id } = useParams()
    console.log(id)
    const backButton = <div style={{ fontSize: "12.5px", display: "inline" }}>Cancel</div>
    return (

        <div className="main-content" >
            <div className="item" style={{ fontSize: "15px" }} >
            <Link to={{ pathname: `/patient/${id}` }}><Button text={backButton} /></Link>
                <h1>Edit Information </h1>
                <div style={{ width: "100%", display: "block" }}>
                    <h2>Maka H Polova. <Button text="Save" /></h2>
                </div>

                <table >
                    <tbody>
                        <tr>
                            <td><b>Healthcard #:</b><br /> Data </td>
                            <td><b>Gender:</b><br />Data</td>
                            <td><b>DOB:</b><br />Data</td>
                            <td><b>Telephone #:</b><br />Data</td>
                        </tr>
                        <tr>

                            <td style={{ columnSpan: "1" }}><b>Emergency contact:</b><br />Data</td>
                            <td colSpan="3" ><b>Address:</b><br /> Data</td>
                        </tr>
                        <tr>
                            <td><b>Bloodtype:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Bloodtype..." /></td>
                            <td><b>Genotype:</b><br /> <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Genotype..." /></td>
                        </tr>

                        <tr>
                            <td colSpan="4" ><b>Allergies:</b><br />grass, pollen, shrimp, lobster, peanut</td>
                        </tr>
                        <tr>
                            <td colSpan="1" ><input type="text" style={{ width: "90%", height: "30px" }} placeholder="Allergy..." /></td>
                        </tr>
                        <tr>
                            <td colSpan="2" ><h3>Weight: 12.5kg</h3>chart goes here</td>
                            <td colSpan="2" ><h3>Height: 12.5ft</h3>chart goes here</td>
                        </tr>
                        <tr>
                            <td colSpan="1" ><input type="text" style={{ width: "90%", height: "30px" }} placeholder="Weight..." /></td>
                            <td colSpan="1" >&nbsp;</td>
                            <td colSpan="1" ><input type="text" style={{ width: "90%", height: "30px" }} placeholder="Height..." /></td>
                        </tr>
                        <tr>
                            <td colSpan="2" ><h3>Temperature: 12C</h3>chart goes here</td>
                            <td colSpan="2" ><h3>Height: 12.5ft</h3>chart goes here</td>
                        </tr>
                        <tr>
                            <td colSpan="1" ><input type="text" style={{ width: "90%", height: "30px" }} placeholder="Temperature..." /></td>
                            <td colSpan="1" >&nbsp;</td>
                            <td colSpan="1" ><input type="text" style={{ width: "90%", height: "30px" }} placeholder="Height..." /></td>
                        </tr>
                        <tr>
                            <td colSpan="2" ><h3>Bloood sugar: 12C</h3>chart goes here</td>
                            <td colSpan="2" ><h3>Blood pressure: 12.5ft</h3>chart goes here</td>
                        </tr>
                        <tr>
                            <td colSpan="1" ><input type="text" style={{ width: "90%", height: "30px" }} placeholder="Blood sugar..." /></td>
                            <td colSpan="1" >&nbsp;</td>
                            <td colSpan="1" ><input type="text" style={{ width: "90%", height: "30px" }} placeholder="Blood pressure..." /></td>
                        </tr>
                        <tr>
                            <td colSpan="2" className="special-table" >
                                <h3>Illness: Malaria</h3>
                                <table >
                                    <tbody>
                                        <tr>
                                            <td><b>Illness</b></td>
                                            <td><b>Date diagnosed</b></td>
                                        </tr>
                                        <tr>
                                            <td>Malaria</td>
                                            <td>Monday</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td colSpan="2" className="special-table">
                                <h3>Medication: Perc-30</h3>
                                <table >
                                    <tbody>
                                        <tr>
                                            <td><b>Medication</b></td>
                                            <td><b>Start of treatment</b></td>
                                        </tr>
                                        <tr>
                                            <td>Perc-30</td>
                                            <td>Monday</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colSpan="1" ><input type="text" style={{ width: "90%", height: "30px" }} placeholder="Illness..." /></td>
                            <td colSpan="1" >&nbsp;</td>
                            <td colSpan="1" ><input type="text" style={{ width: "90%", height: "30px" }} placeholder="Medication..." /></td>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>
    )
}

export default DoctorEdit
