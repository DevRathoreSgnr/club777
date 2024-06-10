const mysql = require('mysql2/promise');

const connection = mysql.createPool({
    host: '89.117.157.45',
    user: 'u548081906_test',
    password: '6$OetIpy#iB',
    database: 'u548081906_test'
});


export default connection;