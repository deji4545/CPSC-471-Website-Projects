import { useState, useEffect } from 'react'
import Button from '../Button'
import { useParams, Link, Routes, Route, Navigate } from 'react-router-dom'
import HR from './HR'

const HREdit = () => {
    const onSubmit = () => {
        if (idNo === "" || sin === "" || fname === "" || lname === "" || m_initial === "" || gender === "" || address === "" || dob === "" || position === "" || salary === "" ||
            dfname === "" || dlname === "" || dm_initial === "" || relationship === "" || phone === "") {
            setMessage('No input can be empty')
            return;
        }

        let method = 'POST'
        if (id === 'add') {
            // method='POST'
        } else {
            method = 'PUT'
        }

        const employeeOption = {
            method: method,
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                id_no: parseInt(idNo),
                sin: parseInt(sin),
                fname: fname,
                m_initial: m_initial,
                lname: lname,
                gender: gender,
                dob: dob,
                address: address,
                salary: parseFloat(salary),
                job: position
            })
        }

        const dependentOption = {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                id_no: parseInt(idNo),
                fname: dfname,
                m_initial: dm_initial,
                lname: dlname,
                relationship: relationship,
                phone_number:parseInt(phone)
            })
        }

        fetch('http://localhost:3000/api/HR/staff', employeeOption)
            .then(response => response)
            .then(data => { console.log(data) });

        fetch('http://localhost:3000/api/HR/staff/dependents', dependentOption)
            .then(response => response)
            .then(data => {
                setMessage('added employee')
                console.log(data)
            });

    }

    const [idNo, setID] = useState("")
    const [sin, setSin] = useState("")
    const [fname, setFname] = useState("")
    const [lname, setLname] = useState("")
    const [m_initial, setMinit] = useState("")
    const [gender, setGender] = useState("")
    const [address, setAddress] = useState("")
    const [dob, setDOB] = useState("")
    const [position, setPostion] = useState("")
    const [salary, setSalary] = useState("")
    const [phone, setPhone] = useState("")
    const [dfname, setdFname] = useState("")
    const [dlname, setdLname] = useState("")
    const [dm_initial, setdMinit] = useState("")
    const [relationship, setRelation] = useState("")
    const [message, setMessage] = useState("")
    const [dependent, setDependent] = useState([])

    const { id } = useParams()

    useEffect(() => {
        const fetchEmployee = async () => {
            const res = await fetch('http://localhost:3000/api/HR/staff/dependents/' + id, { method: "GET" })
            const data = await res.json()

            
            setSin(data.sin)
            setID(data.id_no)
            setFname(data.fname)
            setLname(data.lname)
            setMinit(data.m_initial)
            setGender(data.gender)
            setDOB(data.dob.substring(0, 10))
            setAddress(data.address)
            setPostion(data.job)
            setSalary(data.salary)
            setDependent(data.dependents)


        }

        if (id !== 'add') {
            fetchEmployee()
        }
    }, [id]);
    
    const handleNumberChange = e => {
        let value = e.target.value;
        let name = e.target.name;
        const number = /^[0-9\b]+$/;

        if (number.test(value) || value === '') {
            if (name === "id") {
                setID(value)
            }
            if (name === "sin") {
                setSin(value)
            }

            if (name === "salary") {
                setSalary(value)
            }

            if (name === "phone") {
                setPhone(value)
            }

        }

    };
    const backButton = <div style={{ fontSize: "12.5px", display: "inline" }}>Cancel</div>


    if (message === 'added employee') {
        return (<Routes>
            <Route path="/employee" element={<HR />} />
            <Route path="/" element={<Navigate replace to="/employee" />} />
        </Routes>)
    }
    return (
        <div className="main-content" >
            <div className="item" style={{ fontSize: "15px" }} >
                <Link to="/employee"><Button text={backButton} /></Link>
                <div style={{ width: "100%", display: "block" }}>
                    <h2>Employee <Button text="Save" onClick={onSubmit} /></h2>
                </div>

                <table >
                    <tbody>
                        <tr>
                            <td><b>ID:</b><br />
                                <input type="text" style={{ width: "90%", height: "30px" }} placeholder="ID..."
                                    name="id" value={idNo} onChange={handleNumberChange} />
                            </td>
                            <td><b>SIN:</b><br />
                                <input type="text" style={{ width: "90%", height: "30px" }} placeholder="SIN..."
                                    name="sin" value={sin} onChange={handleNumberChange} />
                            </td>
                            <td><b>Firstname:</b><br />
                                <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Firstname..."
                                    value={fname} onChange={e => setFname(e.target.value)} />
                            </td>
                            <td><b>M.Initial:</b><br />
                                <input type="text" style={{ width: "90%", height: "30px" }} placeholder="M.Initial..."
                                    value={m_initial} onChange={e => setMinit(e.target.value)} />
                            </td>
                            <td><b>Lastname:</b><br />
                                <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Lastname..."
                                    value={lname} onChange={e => setLname(e.target.value)} />
                            </td>
                        </tr>
                        <tr>
                            <td><b>Gender:</b><br />
                                <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Gender..."
                                    value={gender} onChange={(e) => setGender(e.target.value)} />
                            </td>
                            <td><b>DOB:</b><br />
                                <input type="date" style={{ width: "90%", height: "30px" }} placeholder="DOB..."
                                    value={dob} onChange={(e) => setDOB(e.target.value)} />
                            </td>
                            <td colSpan="1" ><b>Address:</b><br />
                                <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Address..."
                                    value={address} onChange={(e) => setAddress(e.target.value)} />
                            </td>
                            <td><b>Position:</b><br />
                                <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Position..."
                                    value={position} onChange={(e) => setPostion(e.target.value)}
                                />
                            </td>
                            <td><b>Salary:</b><br />
                                <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Salary..."
                                    name="salary" value={salary} onChange={handleNumberChange} />
                            </td>
                        </tr>
                        {id === "add" ? <></> :
                            <tr>
                                <td colSpan="3" className="special-table" >
                                    <h3>Dependents: </h3>
                                    <table >
                                        <tbody>
                                            <tr>
                                                <td><b>Dependent</b></td>
                                                <td><b>Relationship</b></td>
                                                <td><b>Phone</b></td>
                                            </tr>
                                            {
                                                dependent.map((dependent,index) => {
                                                    return (
                                                        <tr key={index}>
                                                            <td>{dependent.fname+" "+dependent.m_initial+" "+dependent.lname}</td>
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
                            </tr>}
                        <tr>
                            <td><b>Dependent Firstname:</b><br />
                                <input type="text" style={{ width: "90%", height: "30px" }} placeholder="firstname..."
                                    value={dfname} onChange={e => setdFname(e.target.value)} />
                            </td>

                            <td><b>Dependent Lastname:</b><br />
                                <input type="text" style={{ width: "90%", height: "30px" }} placeholder="lastname..."
                                    value={dlname} onChange={e => setdLname(e.target.value)} />
                            </td>

                            <td><b>Dependent Minitial:</b><br />
                                <input type="text" style={{ width: "90%", height: "30px" }} placeholder="m initial..."
                                    value={dm_initial} onChange={e => setdMinit(e.target.value)} />
                            </td>

                        </tr>
                        <tr>
                            <td><b>Relationship:</b><br />
                                <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Relationship..."
                                    value={relationship} onChange={e => setRelation(e.target.value)} />
                            </td>
                            <td><b>Phone number:</b><br />
                                <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Phone..."
                                    name='phone' value={phone} onChange={handleNumberChange} />
                            </td>
                            <td colSpan="2" style={{ color: "red" }}>{ }</td>

                        </tr>
                        <tr><td colSpan="1" style={{ color: "red" }}>{message}</td></tr>
                    </tbody>
                </table>

            </div>
        </div>
    )
}

export default HREdit
