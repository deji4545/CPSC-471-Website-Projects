import React,{useState, useEffect} from 'react'
import Button from '../Button'
import { Link,useParams } from 'react-router-dom'

const DoctorEdit = () => {
    const [mypatient, setPatient] =useState(null)

    const { id } = useParams()

    useEffect(() => {
        const fetchPatient = async () => {
            const res = await fetch('http://localhost:3000/api/patients/medical/information/' + id, { method: "GET" })
            const data = await res.json()
            console.log(data)
            setPatient(data)

        }
        fetchPatient()


    }, [id])
    const backButton = <div style={{ fontSize: "12.5px", display: "inline" }}>Cancel</div>
    let patientVal ={}
    
    if (mypatient === null) {
        return (
            <div className="main-content" >
                <div className="item" style={{ fontSize: "15px" }} >
                    <Link to="/patient"><Button text={backButton} /></Link>
                    <div style={{ width: "100%", display: "block", marginTop: "25px" }}>
                        Nothing to show...yet
                    </div>
                </div>
            </div>
        )
    } else {
        patientVal = mypatient.patient[0]
    }
    console.log(id)
    
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
                            <td><b>Healthcard #:</b><br /> {patientVal.healthcard_no}</td>
                            <td><b>Gender:</b><br />{patientVal.gender}</td>
                            <td><b>DOB:</b><br />{patientVal.dob.substring(0,10)}</td>
                            <td><b>Telephone #:</b><br />{patientVal.phone_number}</td>
                        </tr>
                        <tr>

                            <td style={{ columnSpan: "1" }}><b>Insurance provider:</b><br />{patientVal.insurance_provider}</td>
                            <td colSpan="2" ><b>Address:</b><br /> {patientVal.address}</td>
                            <td colSpan="1" ><b>Ward No:</b><br /> {patientVal.ward_no}</td>
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
                            <td colSpan="2" ><h3>Height:</h3></td>
                            <td colSpan="2" ><h3>Bloodsugar:</h3></td>
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
