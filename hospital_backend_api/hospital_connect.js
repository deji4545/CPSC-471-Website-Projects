//REFERENCE - Add Later

const Joi = require('joi');
const express = require('express');
const app = express();
var cors = require('cors');
var connection = require('./hospital_db');

app.use(cors());
app.use(express.json());

function toConnect(sql, res) {
    connection.query(sql, function (err, results) {
        if (err) throw err;
        res.send(results);
    });
}

//Retrieve username and password
// app.get('/api/:username/:password', (req, res) => {
//     let sql = `SELECT * FROM LOGIN as L, STAFF as S WHERE L.staffid = ${req.params.username} 
//     and L.password = ${req.params.password} and L.staffid = S.id_no`
//     toConnect(sql, res);

// });
//Retrieve All  Medical Information for a specific Patient
app.get('/api/patients/medical/information/:id', (req, res) => {

    let sql = `SELECT * FROM BIOMETRIC as B WHERE B.h_no = ${req.params.id} `
    //let sql2 = `SELECT name, date_diagnosed FROM DIAGNOSED_WITH WHERE healthcard_no = ${req.params.id}`


    let biometeric = { "height": [], "bloodsugar": [], "bloodpressure_s": [], "bloodpressure_d": [], "date": [] }
    //let record = { "biometric": {}, "illness": {} }


    connection.query(sql, function (err, results) {
        if (err) throw err;

        for (let i = 0; i < results.length; i++) {
            biometeric["height"].push(results[i].height);
            biometeric["bloodsugar"].push(results[i].bloodsugar)
            biometeric["bloodpressure_s"].push(results[i].bloodpressure_s)
            biometeric["bloodpressure_d"].push(results[i].bloodpressure_d)
            biometeric["date"].push(results[i].date)
        }
        //record["biometric"] = biometeric;
        res.send(biometeric);

    });

});

//Retrieve a specific patient illness
app.get('/api/patients/medical/information/illness/:id', (req, res) => {
    let sql = `SELECT * FROM DIAGNOSED_WITH  WHERE healthcard_no = ${req.params.id} `
    toConnect(sql, res);

});

//Insert a patient illness 
app.post('/api/patients/medical/information/illness', (req, res) => {
    let diagnose_with = req.body;
    let sql = 'INSERT INTO diagnose_with SET ?';
    connection.query(sql, diagnose_with, function (err, result) {
        if (err) throw err;
        res.send("A new diagnosis has been Added");
    });
});


//Retrieve a patient medication plan 
app.get('/api/patients/medical/information/medication/:id', (req, res) => {
    let sql = `SELECT drug_name, dose, frequency_per_day
    FROM DIAGNOSED_WITH as D, MEDICATION as M WHERE D.healthcard_no = ${req.params.id}
    and D.treat_no = M.t_no`
    toConnect(sql, res);

});

//Retrieve a patient medication
app.post('/api/patients/medical/information/medication', (req, res) => {
    let medication = req.body;
    let sql = 'INSERT INTO medication SET ?';
    connection.query(sql, medication, function (err, result) {
        if (err) throw err;
        res.send("A new medication has been added");
    });
});




app.post('/api/patients/medical/information/illness', (req, res) => {
    let diagnose_with = req.body;
    let sql = 'INSERT INTO diagnose_with SET ?';
    connection.query(sql, diagnose_with, function (err, result) {
        if (err) throw err;
        res.send("A new diagnosis has been Added");
    });
});









// HR API
//Retrieve all the Staff Information For HR 
app.get('/api/HR/staff', (req, res) => {
    let sql = 'SELECT * FROM STAFF'
    toConnect(sql, res);
});

//Insert a new staff for HR 
app.post('/api/HR/staff', (req, res) => {
    let staff = req.body;
    let sql = 'INSERT INTO staff SET ?';
    connection.query(sql, staff, function (err, result) {
        if (err) throw err;
        res.send("The New Staff Has Been Added");
    });
});

//Update Staff Information 
app.put('/api/HR/staff', (req, res) => {
    let staff = req.body;
    let sql = `UPDATE staff SET ? WHERE id_no = ${staff.id_no} `;
    connection.query(sql, staff, function (err, result) {
        if (err) throw err;
        res.send("Staff Update Succesful");
    });
});


//Retrieve all the dependents for a specific staff
app.get('/api/HR/staff/dependents/:id', (req, res) => {
    let sql = `SELECT * FROM STAFF WHERE id_no = ${req.params.id} `;
    let sql2 = `SELECT * FROM DEPENDENTS WHERE id_no = ${req.params.id} `;
    let staff;
    connection.query(sql, function (err, results) {
        staff = results[0];
    });

    connection.query(sql2, function (err, results2) {
        staff["dependents"] = results2;
        if (err) throw err;
        res.send(staff);
    });
});


//Insert a dependents
app.post('/api/HR/staff/dependents', (req, res) => {
    let dependents = req.body;
    let sql = 'INSERT INTO dependents SET ?';
    connection.query(sql, dependents, function (err, result) {
        if (err) throw err;
        res.send("The New Dependent Has Been Added");
    });
});


//Update a dependent - has not been done yet, having some issues


//PATIENT API

//Retrieve Patient Information For reception 
app.get('/api/reception/patient', (req, res) => {
    let sql = "SELECT P.healthcard_no, P.fname, P.m_initial, P.lname, P.gender, P.dob, P.address,\
    P.phone_number, P.insurance_provider, ward_name, E.fname as 'E.fname',\
    E.lname as 'E.lname', E.m_initial as 'E.m_initial', E.lname as 'E.lname', E.relationship as 'E.relationship',\
    E.phone_number as 'E.phone_number'\
    FROM PATIENT as P, MEDICAL_WARD as M, EMERGENCY_CONTACT as E\
    WHERE P.ward_no = M.ward_no and P.healthcard_no = E.healthcard_no";
    toConnect(sql, res);
});

//Retrieve Patient Information For reception 
app.get('/api/reception/specific_patient/:id', (req, res) => {
    let sql = `SELECT * FROM PATIENT WHERE healthcare_no = ${req.params.id}`;
    toConnect(sql, res);
});






//Add new patient 
app.post('/api/reception/patient', (req, res) => {
    let patient = req.body;
    let sql = 'INSERT INTO patient SET ?';
    console.log(req.body)
    connection.query(sql, patient, function (err, result) {
        if (err) throw err;
        res.send("The new patient has been added");
    });
});



//Update a new patient 
app.put('/api/reception/patient', (req, res) => {
    let patient = req.body;
    let sql = `UPDATE patient SET ? WHERE healthcard_no = ${patient.healthcard_no} `;
    connection.query(sql, patient, function (err, result) {
        if (err) throw err;
        res.send("Patient Update Succesful");
    });
});



//Retrieve Emergency Contact for a specific patient
app.get('/api/reception/patient/emergency_contact/:id', (req, res) => {
    let sql = `SELECT * FROM EMERGENCY_CONTACT WHERE healthcard_no = ${req.params.id} `;
    toConnect(sql, res);
});


//Insert Emergency Contact
app.post('/api/reception/emergency_contact', (req, res) => {
    let emergency_contact = req.body;
    let sql = 'INSERT INTO emergency_contact SET ?';
    connection.query(sql, emergency_contact, function (err, result) {
        if (err) throw err;
        res.send("The new emergency contact has been added");
    });
});


//Update a emergency contact 
app.put('/api/reception/emergency_contact', (req, res) => {
    let emergency_contact = req.body;
    let sql = `UPDATE emergency_contact SET ? WHERE healthcard_no = ${emergency_contact.healthcard_no} `;
    connection.query(sql, emergency_contact, function (err, result) {
        if (err) throw err;
        res.send("Emergency Contact Update Succesfull");
    });
});








app.listen(3000, () => console.log('Listening on port 3000'));