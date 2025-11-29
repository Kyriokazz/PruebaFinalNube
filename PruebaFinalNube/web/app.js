const express = require('express');
const mysql = require('mysql2');
const app = express();
const port = 3000;

app.use(express.static('static'));

const connection = mysql.createPool({
    host: 'bd',               
    user: 'root',
    password: 'password123',
    database: 'prueba-final-nube'
});

app.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html');
});

app.get('/api/logs', (req, res) => {
    connection.query('SELECT * FROM log', (err, results) => {
        if (err) {
            console.error(err);
            res.status(500).send('Error de BD');
        } else {
            res.json(results);
        }
    });
});

app.get('/health', (req, res) => res.send('Healthy'));

app.listen(port, () => console.log('Servidor web listo en puerto', port));