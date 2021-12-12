//reference - https://www.youtube.com/watch?v=pKd0Rpw7O48&ab_channel=ProgrammingwithMosh
//https://www.youtube.com/watch?v=tIV90xQ0k6A&list=PLfUwf13F0W1uEyquTxrQrF2sujiuv_f1v&index=10
//https://www.edureka.co/blog/node-js-mysql-tutorial/

const Joi = require('joi');
const express = require('express');
const app = express();

var connection = require('./hospital_db');

app.use(express.json());



//Retriever Staff Information For HR
app.get('/api/HR/staff', (req, res) => {
    let sql = 'SELECT * FROM STAFF'
    // let sql = 'SELECT * \
    // FROM STAFF, DEPENDENTS \
    // WHERE STAFF.id_no = DEPENDENTS.id_no\
    // GROUP_BY DEPENDENTS.id_no'
    connection.query(sql, function (err, results) {
        if (err) throw err;
        res.send(results);
    });
});

//Retrieve Staff Dependents
app.get('/api/HR/staff/dependent', (req, res) => {
    let sql = "SELECT * FROM DEPENDENTS"
    connection.query(sql, function (err, results) {
        if (err) throw err;
        res.send(results);
    });
});


//Next Stage - Put and Post For Dependents and Staff


//Retriever Patient Information For reception
app.get('/api/reception/patients', (req, res) => {
    let sql = "SELECT * FROM PATIENT";

    connection.query(sql, function (err, results) {
        if (err) throw err;
        res.send(results);
    });
});

//Insert New Patient into database
//Error Check
app.post('/api/reception/patients', (req, res) => {
    let patient = req.body;
    var sql = "SET @healthcard_no = ?;SET @fname = ?;SET @m_initial = ?;SET @lname = ?;SET @gender = ?;SET @dob = ?; \
    CALL patientAddOrEdit(@healthcard_no, @fname, @m_initial, @lname, @gender, @dob);";
    connection.query(sql, [patient.healthcard_no, patient.fname, patient.m_initial, patient.lname, patient.gender, patient.dob], (err, rows, fields) => {
        if (!err)
            rows.forEach(element => {
                if (element.constructor == Array)
                    res.send('New Patient is now in the databse');
            });
        else
            console.log(err);
    })
});




//Update a new patient
app.put('/api/reception/patients', (req, res) => {
    let patient = req.body;
    var sql = "SET @healthcard_no = ?;SET @fname = ?;SET @m_initial = ?;SET @lname = ?;SET @gender = ?;SET @dob = ?; \
    CALL patientUpdate(@healthcard_no, @fname, @m_initial, @lname, @gender, @dob);";
    connection.query(sql, [patient.healthcard_no, patient.fname, patient.m_initial, patient.lname, patient.gender, patient.dob], (err, rows, fields) => {
        if (!err)
            res.send('Updated successfully');
        else
            console.log(err);
    })
});







app.listen(3000, () => console.log('Listening on port 3000'));