import {useState,useEffect} from 'react'
import HRItem from './HRItem'
import Button from '../Button'
import { Link } from "react-router-dom";
import HREdit from './HREdit';

const HR = () => {
    const [employees, setEmployees] = useState([])
    const [search, setSearch] = useState('')

    useEffect(() => {
        const getPatients = async () => {
            const tasksFromServer = await fetchEmployees()
            //   console.log(tasksFromServer)
            setEmployees(tasksFromServer)
        }

        getPatients()
    }, [employees])

    const fetchEmployees = async () => {
        const res = await fetch('http://localhost:3000/api/HR/staff', { method: "GET" })
        const data = await res.json()

        return data
    }


    const deleteEmployee=(id) =>{
        console.log(id)
        fetch('http://localhost:3000/api/HR/staff/'+id, { method: "DELETE" })
        .then(response => response)
        .then(data => { setEmployees([])   
                    console.log(data)});
    }

    const data = employees.filter(
        (val) => {
            const name = (val.fname+""+val.lname+""+val.m_initial).toString().toLowerCase()
            const stuff= search.toString().toLowerCase()
            if (search===""){
                return val
            } else if (name.includes(stuff)){
                return val
            } 
            return null
        }
    ).map((employee, index) => (
        <HRItem key={index} employee={employee} deleteEmployee={deleteEmployee} />))


    return (
        <div className="main-content">

            <div className="search-box" >
                Search: <input type="text" placeholder="Search..." value={search} onChange={(e) => setSearch(e.target.value)}/>
                <div className="add-button"><Link to="/edit/hr/add"><Button text="Add Employee" /></Link></div>
            </div>
            {employees.length > 0 ?
                data
                : 'Nothing to show here'}

        </div>
    )
}

export default HR
