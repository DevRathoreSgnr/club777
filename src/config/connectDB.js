const mysql = require('mysql2/promise');

const connection = mysql.createPool({
    host: '91.108.107.216',
    user: 'u695257503_clubindia',
    password: '4b4A$kM$I;dP',
    database: 'u695257503_clubindia'
});


export default connection;
