import { useState, useEffect } from 'react'
import Button from '../Button'
import { AiOutlineArrowLeft } from 'react-icons/ai'
import { useParams, Link } from 'react-router-dom'


const Employee = () => {
    const [employee, setEmployee] = useState(null)
    const { id } = useParams()
    const backButton = <div><AiOutlineArrowLeft /><div style={{ fontSize: "12.5px", display: "inline" }}>Back</div></div>

    useEffect(() => {
        const fetchPatient = async () => {
            const res = await fetch('http://localhost:3000/api/HR/staff/dependents/' + id, { method: "GET" })
            const data = await res.json()

            setEmployee(data)

        }

        if (id !== 'add') {
            fetchPatient()
        }
    }, [id]);

    if (employee === null) {
        return (
            <div className="main-content" >
                <div className="item" style={{ fontSize: "15px" }} >
                    <Link to="/employee"><Button text={backButton} /></Link>
                    <div style={{ width: "100%", display: "block", marginTop: "25px" }}>
                        Nothing to show...yet
                    </div>
                </div>
            </div>
        )
    }
    return (
        <div className="main-content" style={{marginTop:"25px"}}>
            <div><Button text="Logout" /></div>
            <div className="item" style={{ fontSize: "15px" }} >
                <Link to="/employee"><Button text={backButton} /></Link>
                <div style={{ width: "100%", display: "block" }}>
                    <h2>{employee.fname + " " + employee.m_initial + " " + employee.lname} <Link to={{ pathname: `/edit/hr/${id}` }}><Button text="Edit" /></Link></h2>
                </div>

                <table >
                    <tbody>
                        <tr>
                            <td><b>ID:</b><br /> {employee.id_no}</td>
                            <td><b>SIN:</b><br />{employee.sin}</td>
                            <td><b>Gender:</b><br />{employee.gender}</td>
                            <td><b>DOB:</b><br />{employee.dob.substring(0, 10)}</td>
                        </tr>
                        <tr>

                            <td colSpan="2" ><b>Address:</b><br /> {employee.address}</td>
                            <td><b>Position:</b><br /> {employee.job}</td>
                            <td><b>Salary:</b><br /> {employee.salary}</td>
                        </tr>
                        <tr>
                            <td colSpan="2" className="special-table" >
                                <h3>Dependents: </h3>
                                <table >
                                    <tbody>
                                        <tr>
                                            <td><b>Dependent</b></td>
                                            <td><b>Relationship</b></td>
                                            <td><b>Phone number</b></td>
                                        </tr>

                                        {
                                            employee.dependents.map((dependent, index) => {
                                                return (
                                                    <tr key={index}>
                                                        <td>{dependent.fname + " " + dependent.m_initial + " " + dependent.lname}</td>
                                                        <td>{dependent.relationship}</td>
                                                        <td>{dependent.phone_number}</td>
                                                    </tr>
                                                )
                                            }

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

export default Employee
