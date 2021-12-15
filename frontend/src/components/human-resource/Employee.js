import React from 'react'
import Button from '../Button'
import { AiOutlineArrowLeft } from 'react-icons/ai'
import { useParams, Link } from 'react-router-dom'


const Employee = () => {
    const {id} = useParams()
    console.log(id)
    const backButton = <div><AiOutlineArrowLeft /><div style={{ fontSize: "12.5px", display: "inline" }}>Back</div></div>
    return (
        <div className="main-content" >
            <div className="item" style={{ fontSize: "15px" }} >
                <Link to="/employee"><Button text={backButton} /></Link>
                <div style={{ width: "100%", display: "block" }}>
                    <h2>Maka H Polova. <Link to={{pathname:`/edit/hr/${id}`}}><Button text="Edit" /></Link></h2>
                </div>

                <table >
                    <tbody>
                        <tr>
                            <td><b>ID:</b><br /> Data</td>
                            <td><b>SIN:</b><br />Data</td>
                            <td><b>Name:</b><br />Data</td>
                            <td><b>Gender:</b><br />Data</td>
                        </tr>
                        <tr>
                            <td><b>DOB:</b><br />s</td>
                            <td style={{ columnSpan: "1" }}><b>Telephone #:</b><br />Data</td>
                            <td colSpan="2" ><b>Address:</b><br /> Data</td>
                        </tr>
                        <tr>
                            <td><b>Position:</b><br /> Data</td>
                            <td><b>Start date:</b><br /> Data</td>
                            <td><b>Salary:</b><br /> Data</td>
                            <td><b>Benefits:</b><br /> Data</td>
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
                    </tbody>
                </table>

            </div>
        </div>
    )
}

export default Employee
