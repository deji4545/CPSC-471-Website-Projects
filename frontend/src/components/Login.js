import React, { useState } from 'react'
// import { Redirect, Link } from "react-router-dom";
import { Routes, Route, Navigate } from 'react-router-dom'
import Receptionist from './receptionist/Receptionist'
import HR from './human-resource/HR'
import Doctor from './doctor/Doctor'

const LoginPage = () => {
    const [password, setPassword] = useState('')
    const [eId, setId] = useState('')
    const [errorMessage, setMessage] = useState('')
    const [user, setUser] = useState(null)



    const onSubmit = (e) => {
        e.preventDefault()
        if (eId === "" || password === "") {
            setMessage('Eid or password cannot be empty')
            return;
        }

        fetch(`http://localhost:3000/api/login/${eId}/${password}`, { method: "GET" })
            .then(response => response.json())
            .then(data => {
                console.log(data)
                setUser(data);
                if (data.login_correct === false) {
                    setMessage('Wrong id or password')
                    return;
                }
                if (data.staff_type==='human resource' || data.staff_type==='reception' || data.staff_type==='nurse' || data.staff_type==='doctor'  ) {
                    sessionStorage.setItem('type', data.staff_type)
                    setMessage('')
                    
                }
                setMessage('Sorry you do not have access')
            });


    }

    const onIdChange = e => {
        let value = e.target.value;
        let name = e.target.name;
        const number = /^[0-9\b]+$/;

        if (number.test(value) || value === '') {

            setId(value)

        }
    }

    if (sessionStorage.getItem('type') !== null) {
        console.log(sessionStorage.getItem('type'))
        if (sessionStorage.getItem('type') === 'reception') {
            return (
                <Routes>
                    <Route path="/reception" element={<Receptionist />} />
                    <Route path="*" element={<Navigate replace to="/reception" />} />
                </Routes>
            )
        }

        if (sessionStorage.getItem('type') === 'human resource') {
            return (
                <Routes>
                    <Route path="/employee" element={<HR />} />
                    <Route path="*" element={<Navigate replace to="/employee" />} />
                </Routes>
            )
        }

        if (sessionStorage.getItem('type') === 'doctor' || sessionStorage.getItem('type') === 'nurse') {
            console.log('here')
            return (
                <Routes>
                    <Route path="/patient" element={<Doctor />} />
                    <Route path="*" element={<Navigate replace to="/patient" />} />
                </Routes>
            )
        }




    }

    return (
        <div className="outer">
            <div className="full-form-style">

                <form onSubmit={onSubmit}>
                    <h2>Login</h2>

                    <div className="form-style">
                        <label>Employee id</label>
                        <input
                            type="text"
                            placeholder="Enter id"
                            value={eId}
                            onChange={onIdChange}
                        />
                    </div>
                    <br />
                    <div className="form-style">
                        <label>Password</label>
                        <input
                            type="password"
                            placeholder="Enter password"
                            value={password}
                            onChange={(e) => setPassword(e.target.value)}
                        />
                    </div>
                    <div className='error-message'>{errorMessage}</div>
                    <input type='submit' value='Login' style={{ marginTop: "20px" }} className='btn btn-block' />

                </form>
            </div>
        </div>
    )
}

export default LoginPage
