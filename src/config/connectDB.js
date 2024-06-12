const mysql = require('mysql2/promise');

const connection = mysql.createPool({
    host: '91.108.107.216',
    user: 'u695257503_gateway',
    password: 'eF!1!ylSc@#z',
    database: 'u695257503_gateway'
});


export default connection;
