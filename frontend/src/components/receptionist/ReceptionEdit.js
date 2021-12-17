import { useState,useEffect } from 'react'
import Button from '../Button'
import { useParams, Link, Routes, Route, Navigate } from 'react-router-dom'
import Receptionist from './Receptionist'

let filled= false

const ReceptionEdit = () => {
    const onSubmit = () => {
        if (healthCard === '' || fname === '' || lname === '' || mInit === '' || gender === '' || dob === '' || phone === '' || efname === '' || elname === '' ||
            emInit === '' || relation === '' || ephone === '' || address === '' || wardNo === '' || provider === '') {
            setMessage('No input can be empty')
            return;
        }
        let method= 'POST'
        if(id==="add"){
            // method='POST'
        } else{
            method='PUT'
        }
        const patientOption = {
            method: method,
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                healthcard_no: parseInt(healthCard),
                fname: fname,
                m_initial: mInit,
                lname: lname,
                gender: gender,
                dob: dob,
                address: address,
                phone_number: parseInt(phone),
                insurance_provider: provider,
                ward_no: parseInt(wardNo)
            })
        }

        const emergencyOption = {
            method: method,
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                healthcard_no: parseInt(healthCard),
                fname: fname,
                m_initial: mInit,
                lname: lname,
                relationship: relation,
                phone_number: parseInt(phone)
            })
        }

        fetch('http://localhost:3000/api/reception/patient', patientOption)
            .then(response => response)
            .then(data => { });

        fetch('http://localhost:3000/api/reception/emergency_contact', emergencyOption)
            .then(response => response)
            .then(data => { setMessage('added patient') });
    }
    const [healthCard, setCard] = useState("")
    const [fname, setFname] = useState("")
    const [lname, setLname] = useState("")
    const [mInit, setMinit] = useState("")
    const [gender, setGender] = useState("")
    const [dob, setDOB] = useState("")
    const [phone, setPhone] = useState("")
    // emergency contact 
    const [efname, seteFname] = useState("")
    const [elname, seteLname] = useState("")
    const [emInit, seteMinit] = useState("")
    const [relation, setRelation] = useState("")
    const [ephone, setePhone] = useState("")

    const [address, setAddress] = useState("")
    const [wardNo, setWard] = useState("")
    const [provider, setProvider] = useState("")
    const [message, setMessage] = useState("")
    const [fill,setFill] =useState(false)

    

    const { id } = useParams()
    
    useEffect(() => {
        const fetchPatient = async () => {
            const res = await fetch('http://localhost:3000/api/reception/patient/' + id, { method: "GET" })
            const data = await res.json()
    
            data.map((patient, index) => {
                setCard(patient.healthcard_no)
                setFname(patient.fname)
                setLname(patient.lname)
                setMinit(patient.m_initial)
                setGender(patient.gender)
                setDOB(patient.dob.substring(0,10))
                setAddress(patient.address)
                setPhone(patient.phone_number)
                setProvider(patient.insurance_provider)
                setWard(patient.ward_no)
                seteFname(patient.Efname)
                seteLname(patient.Elname)
                seteMinit(patient.Em_initial)
                setRelation(patient.Erelationship)
                setePhone(patient.Ephone_number)
                
            })
           setFill(true)
        }
       
        if (fill===false && id !=='add'){
            fetchPatient()
        }
      }, [fill,id]);

      
    
    const backButton = <div style={{ fontSize: "12.5px", display: "inline" }}>Cancel</div>

    const onHandleTelephoneChange = e => {
        let telephone = e.target.value;
        const number = /^[0-9\b]+$/;

        if (number.test(telephone) || telephone === '') {
            if (e.target.name === 'eNumber') {
                setePhone(telephone)
            } else {
                setPhone(telephone)
            }

        }

    };

    const handleWard = e => {
        let ward = e.target.value;
        const number = /^[0-9\b]+$/;
        if (number.test(ward) || ward === '') {
            if (ward < 37) {
                setWard(ward)
            }

        }
    }

    const addPatients = () => {

    }

    if (message === 'added patient') {
        return (<Routes>
            <Route path="/reception" element={<Receptionist />} />
            <Route path="/" element={<Navigate replace to="/reception" />} />
        </Routes>)


    }

    return (
        <div>
            <div className="main-content" >
                <div className="item" style={{ fontSize: "15px" }} >
                    <Link to={{ pathname: `/reception` }}><Button text={backButton} /></Link>
                    <h1>Patient </h1>
                    <table >
                        <tbody>
                            <tr>
                                <td><b>Health card #:</b>
                                    <br />
                                    {id === "add" ?
                                        <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Healthcard #..." value={healthCard} onChange={(e) => setCard(e.target.value)} /> :
                                        <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Healthcard #..." value={healthCard} onChange={(e) => {}} />
                                    }
                                </td>
                                <td><b>Firstname:</b><br />
                                    <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Firstname..." value={fname} onChange={(e) => setFname(e.target.value)} />
                                </td>
                                <td><b>Lastname:</b><br />
                                    <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Lastname..." value={lname} onChange={(e) => setLname(e.target.value)} />
                                </td>
                                <td><b>M. Initial:</b><br />
                                    <input type="text" style={{ width: "90%", height: "30px" }} placeholder="M.Initial..." value={mInit} onChange={(e) => setMinit(e.target.value)} />
                                </td>
                            </tr>
                            <tr>
                                <td><b>Gender:</b><br />
                                    <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Gender..." value={gender} onChange={(e) => setGender(e.target.value)} />
                                </td>
                                <td><b>DOB:</b><br />
                                    <input type="date" style={{ width: "90%", height: "30px" }} placeholder="DOB..." value={dob} onChange={(e) => setDOB(e.target.value)} />
                                </td>
                                <td><b>Telephone #:</b><br />
                                    <input type="text" style={{ width: "90%", height: "30px" }}
                                        placeholder="Telephone #..."
                                        value={phone}
                                        onChange={onHandleTelephoneChange} />
                                </td>

                            </tr>
                            <tr><td colSpan="4"><h2> Emergency contact:</h2><br /></td></tr>
                            <tr>

                                <td><b> First name:</b><br />
                                    <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Emergency contact..." value={efname} onChange={(e) => seteFname(e.target.value)} />
                                </td>

                                <td><b>Last name:</b><br />
                                    <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Emergency contact..." value={elname} onChange={(e) => seteLname(e.target.value)} />
                                </td>

                                <td ><b>Minit:</b><br />
                                    <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Emergency contact..." value={emInit} onChange={(e) => seteMinit(e.target.value)} />
                                </td>

                                <td ><b>Relation:</b><br />
                                    <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Emergency contact..." value={relation} onChange={(e) => setRelation(e.target.value)} />
                                </td>

                                <td><b>Number#:</b><br />
                                    <input type="text" name="eNumber" style={{ width: "90%", height: "30px" }} placeholder="Emergency contact..." value={ephone} onChange={onHandleTelephoneChange} />
                                </td>

                            </tr>
                            <tr>
                                <td colSpan="2"><b>Address:</b><br />
                                    <input type="text" style={{ width: "95%", height: "30px" }} placeholder="Address..." value={address} onChange={(e) => setAddress(e.target.value)} />
                                </td>
                                <td><b>Insurance Provider:</b><br />
                                    <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Insurance provider..." value={provider} onChange={(e) => setProvider(e.target.value)} />
                                </td>
                                <td><b>Ward:</b><br />
                                    <input type="text" style={{ width: "90%", height: "30px" }} placeholder="Ward..." value={wardNo} onChange={handleWard} />
                                </td>
                            </tr>
                            <tr>
                                <td colSpan="1" style={{ color: "red" }}>{message}</td>
                                <td colSpan="3"></td>
                                <td><div className="add-button"> <Button text="Save" onClick={onSubmit} /></div></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    )
}

filled= false

export default ReceptionEdit
