import React, { useState, useEffect } from 'react'
import Button from '../Button'
import { AiOutlineArrowLeft } from 'react-icons/ai'
import { useParams, Link } from 'react-router-dom'
import {
    Chart as ChartJS,
    CategoryScale,
    LinearScale,
    PointElement,
    LineElement,
    Title,
    Tooltip,
    Legend,
} from 'chart.js'
import { Line } from 'react-chartjs-2'

ChartJS.register(
    CategoryScale,
    LinearScale,
    PointElement,
    LineElement,
    Title,
    Tooltip,
    Legend
)


const Patient = () => {
    const [patient, setPatient] = useState(null)
    const { id } = useParams()
   
    console.log(id)
    const backButton = <div><AiOutlineArrowLeft /><div style={{ fontSize: "12.5px", display: "inline" }}>Back</div></div>

    useEffect(() => {
        const fetchPatient = async () => {
            const res = await fetch('http://localhost:3000/api/patients/medical/information/' + id, { method: "GET" })
            const data = await res.json()
            console.log(data)
            setPatient(data)

        }
        fetchPatient()


    }, [id])
    let patientVal = {}
    if (patient === null) {
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
        patientVal = patient.patient[0]
    }

    const chartData = {
        labels: patient.biometric.date.map(val => val.substring(0, 10)),
        datasets: [
            {
                label: 'Height',
                fill: false,
                lineTension: 0.5,
                backgroundColor: 'rgba(75,192,192,1)',
                borderColor: 'rgba(0,0,0,1)',
                borderWidth: 2,
                data: patient.biometric.height
            }
        ]
    }

    const chartData2 = {
        labels: patient.biometric.date.map(val => val.substring(0, 10)),
        datasets: [
            {
                label: 'Blood sugar',
                fill: false,
                lineTension: 0.5,
                backgroundColor: 'rgba(75,192,192,1)',
                borderColor: 'rgba(0,0,0,1)',
                borderWidth: 2,
                data: patient.biometric.bloodsugar
            }
        ]
    }
    const chartData3 = {
        labels: patient.biometric.date.map(val => val.substring(0, 10)),
        datasets: [
            {
                label: 'S Blood pressure',
                fill: false,
                lineTension: 0.5,
                backgroundColor: 'rgba(75,192,192,1)',
                borderColor: 'rgba(0,0,0,1)',
                borderWidth: 2,
                data: patient.biometric.bloodpressure_s
            }
        ]
    }

    const chartData4 = {
        labels: patient.biometric.date.map(val => val.substring(0, 10)),
        datasets: [
            {
                label: 'D Blood pressure',
                fill: false,
                lineTension: 0.5,
                backgroundColor: 'rgba(75,192,192,1)',
                borderColor: 'rgba(0,0,0,1)',
                borderWidth: 2,
                data: patient.biometric.bloodpressure_d
            }
        ]
    }

    console.log(patientVal)
    return (
        <div className="main-content" >
            <div className="item" style={{ fontSize: "15px" }} >
                <Link to={{ pathname: `/patient` }}><Button text={backButton} /></Link>
                <div style={{ width: "100%", display: "block" }}>
                    <h2>{patientVal.fname + " " + patientVal.m_initial + " " + patientVal.lname}. <Link to={{ pathname: `/edit/doctor/${id}` }}><Button text="Edit" /></Link></h2>
                </div>

                <table >
                    <tbody>
                        <tr>
                            <td><b>Healthcard #:</b><br /> {patientVal.healthcard_no}</td>
                            <td><b>Gender:</b><br />{patientVal.gender}</td>
                            <td><b>DOB:</b><br />{patientVal.dob.substring(0, 10)}</td>
                            <td><b>Telephone #:</b><br />{patientVal.phone_number}</td>
                        </tr>
                        <tr>

                            <td style={{ columnSpan: "1" }}><b>Insurance provider:</b><br />{patientVal.insurance_provider}</td>
                            <td colSpan="2" ><b>Address:</b><br /> {patientVal.address}</td>
                            <td colSpan="1" ><b>Ward No:</b><br /> {patientVal.ward_no}</td>
                        </tr>

                        <tr>
                            <td colSpan="2" ><h3>Height: </h3>
                                <Line
                                    data={chartData}
                                    options={{
                                        responsive: true,
                                        plugins: {
                                            title: {
                                                display: true,
                                                text: 'Height',
                                                align: 'start'
                                            }
                                        }


                                    }}
                                />
                            </td>
                            <td colSpan="2" ><h3>Blood sugar: </h3>
                                <Line
                                    data={chartData2}
                                    options={{
                                        responsive: true,
                                        plugins: {
                                            title: {
                                                display: true,
                                                text: 'Blood sugar',
                                                align: 'start'
                                            }
                                        }


                                    }}
                                />
                            </td>
                        </tr>
                        <tr>
                            <td colSpan="2" ><h3>Systole Blood pressure: </h3>
                                <Line
                                    data={chartData3}
                                    options={{
                                        responsive: true,
                                        plugins: {
                                            title: {
                                                display: true,
                                                text: 'Systole Blood pressure',
                                                align: 'start'
                                            }
                                        }


                                    }}
                                />
                            </td>
                            <td colSpan="2" ><h3>Diastole Blood pressure: </h3>
                                <Line
                                    data={chartData4}
                                    options={{
                                        responsive: true,
                                        plugins: {
                                            title: {
                                                display: true,
                                                text: 'Diastole Blood pressure',
                                                align: 'start'
                                            }
                                        }


                                    }}
                                />
                            </td>
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
                                        {patient.illness.map((val,index) =>
                                        (
                                            <tr key={index}>
                                                <td>{val.name}</td>
                                                <td>{val.date_diagnosed.substring(0, 10)}</td>
                                            </tr>
                                        )
                                        )

                                        }
                                    </tbody>
                                </table>
                            </td>
                            <td colSpan="2" className="special-table">
                                <h3>Medication: </h3>
                                <table >
                                    <tbody>
                                        <tr>
                                            <td><b>Medication</b></td>
                                            <td><b>Dose</b></td>
                                            <td><b>Frequency</b></td>
                                        </tr>
                                        {patient.medication.map((val,index) =>
                                        (
                                            <tr key={index}>
                                                <td style={{overflow:"auto"}}>{val.drug_name}</td>
                                                <td>{val.dose}</td>
                                                <td>{val.frequency_per_day}</td>
                                            </tr>
                                        )
                                        )

                                        }
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                        <td colSpan="2" className="special-table">
                                <h3>Surgery: </h3>
                                <table >
                                    <tbody>
                                        <tr>
                                            <td><b>Medication</b></td>
                                            <td><b>Dose</b></td>
                                            <td><b>Frequency</b></td>
                                        </tr>
                                        {patient.medication.map((val,index) =>
                                        (
                                            <tr key={index}>
                                                <td style={{overflow:"auto"}}>{val.drug_name}</td>
                                                <td>{val.dose}</td>
                                                <td>{val.frequency_per_day}</td>
                                            </tr>
                                        )
                                        )

                                        }
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>
    )
}

export default Patient
