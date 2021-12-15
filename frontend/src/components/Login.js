import React, {useState} from 'react'
// import { Redirect, Link } from "react-router-dom";


const LoginPage = () => {
    const [password, setPassword]= useState('')
    const [eId, setId] = useState('')
    const [errorMessage, setMessage]= useState('')
    const [userType, setUsertType] = useState('')
    
    const onSubmit = (e) => {
        e.preventDefault()
        if(eId === "" || password === ""){
            setMessage('Eid or password cannot be empty')
            return;
        }
        setMessage('')
        alert(eId +" " + password)
        
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
                            onChange={(e) => setId(e.target.value)}
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
                    <input type='submit' value='Login' style={{marginTop:"20px"}} className='btn btn-block' />
                    
                </form>
            </div>
        </div>
    )
}

export default LoginPage
