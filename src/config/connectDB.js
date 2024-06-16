const mysql = require('mysql2/promise');

const connection = mysql.createPool({
    host: '159.223.130.221',
    user: 'club_India',
    password: 'KillerDregon2050R',
    database: 'gateway_club'
});


export default connection;
