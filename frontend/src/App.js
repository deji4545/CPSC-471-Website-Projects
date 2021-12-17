import './App.css';
import Login from './components/Login'
import Doctor from './components/doctor/Doctor'
import Patient from './components/doctor/Patient';
import DoctorEdit from './components/doctor/DoctorEdit'
import Receptionist from './components/receptionist/Receptionist'
import ReceptionEdit from './components/receptionist/ReceptionEdit'
import HR from './components/human-resource/HR'
import Employee from './components/human-resource/Employee'
import HREdit from './components/human-resource/HREdit'
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";

function App() {
  return (
    <Router>
      <div className="App">
    


        <Routes>
          <Route path="/" element={<Login />} />
          <Route path="/patient" element={<Doctor />} />
          <Route path='/patient/:id' element={<Patient />} />
          <Route path="/edit/doctor/:id" element={<DoctorEdit />} />
          <Route path="/reception" element={<Receptionist />} />
          <Route path="/edit/reception/:id/*" element={<ReceptionEdit />} />
          
          <Route path="/employee" element={<HR />} />
          <Route path="/showEmployee/:id" element={<Employee />} />
          <Route path="/edit/hr/:id/*" element={<HREdit />} />
          
          <Route path="*" element={<Login />} />
        </Routes>


      </div>
    </Router>
  );
}

export default App;
