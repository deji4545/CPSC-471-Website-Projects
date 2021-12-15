import React from 'react'
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
    const { id } = useParams()
    const chartData = {
        labels: ['January', 'February', 'March',
            'April', 'May'],
        datasets: [
            {
                label: 'Weight',
                fill: false,
                lineTension: 0.5,
                backgroundColor: 'rgba(75,192,192,1)',
                borderColor: 'rgba(0,0,0,1)',
                borderWidth: 2,
                data: [65, 59, 80, 81, 56]
            }
        ]
    }
    console.log(id)
    const backButton = <div><AiOutlineArrowLeft /><div style={{ fontSize: "12.5px", display: "inline" }}>Back</div></div>
    return (
        <div className="main-content" >
            <div className="item" style={{ fontSize: "15px" }} >
                <Link to={{ pathname: `/patient` }}><Button text={backButton} /></Link>
                <div style={{ width: "100%", display: "block" }}>
                    <h2>Maka H Polova. <Link to={{ pathname: `/edit/doctor/${id}` }}><Button text="Edit" /></Link></h2>
                </div>

                <table >
                    <tbody>
                        <tr>
                            <td><b>Healthcard #:</b><br /> dsnd dqdqjwdnqwdqlwdnqldnjlndlqlnd</td>
                            <td><b>Gender:</b><br />s</td>
                            <td><b>DOB:</b><br />s</td>
                            <td><b>Telephone #:</b><br />s</td>
                        </tr>
                        <tr>

                            <td style={{ columnSpan: "1" }}><b>Emergency contact:</b><br />s</td>
                            <td colSpan="3" ><b>Address:</b><br /> sdc</td>
                        </tr>
                        <tr>
                            <td><b>Bloodtype:</b><br /> dsnd dqdqjwdnqwdqlwdnqldnjlndlqlnd</td>
                            <td><b>Genotype:</b><br />s</td>
                        </tr>

                        <tr>
                            <td colSpan="4" ><b>Allergies:</b><br />s</td>
                        </tr>
                        <tr>
                            <td colSpan="2" ><h3>Weight: 12.5kg</h3>
                                <Line
                                    data={chartData}
                                    options={{
                                        responsive: true,
                                        plugins: {
                                            title: {
                                                display: true,
                                                text: 'Weight',
                                                align: 'start'
                                            }
                                        }


                                    }}
                                />
                            </td>
                            <td colSpan="2" ><h3>Height: 12.5ft</h3>
                                <Line
                                    data={chartData}
                                    options={{
                                        responsive: true,
                                        plugins: {
                                            title: {
                                                display: true,
                                                text: 'Weight',
                                                align: 'start'
                                            }
                                        }


                                    }}
                                />
                            </td>
                        </tr>
                        <tr>
                            <td colSpan="2" ><h3>Temperature: 12C</h3>
                                <Line
                                    data={chartData}
                                    options={{
                                        responsive: true,
                                        plugins: {
                                            title: {
                                                display: true,
                                                text: 'Weight',
                                                align: 'start'
                                            }
                                        }


                                    }}
                                />
                            </td>
                            <td colSpan="2" ><h3>Height: 12.5ft</h3>
                                <Line
                                    data={chartData}
                                    options={{
                                        responsive: true,
                                        plugins: {
                                            title: {
                                                display: true,
                                                text: 'Weight',
                                                align: 'start'
                                            }
                                        }


                                    }}
                                />
                            </td>
                        </tr>
                        <tr>
                            <td colSpan="2" ><h3>Bloood sugar: 12C</h3>
                                <Line
                                    data={chartData}
                                    options={{
                                        responsive: true,
                                        plugins: {
                                            title: {
                                                display: true,
                                                text: 'Weight',
                                                align: 'start'
                                            }
                                        }


                                    }}
                                />
                            </td>
                            <td colSpan="2" ><h3>Blood pressure: 12.5ft</h3>
                                <Line
                                    data={chartData}
                                    options={{
                                        responsive: true,
                                        plugins: {
                                            title: {
                                                display: true,
                                                text: 'Weight',
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
                    </tbody>
                </table>

            </div>
        </div>
    )
}

export default Patient
