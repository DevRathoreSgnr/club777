const mysql = require('mysql2/promise');

const connection = mysql.createPool({
    host: '89.117.157.45',
    user: 'u548081906_digitalocean',
    password: 'k2&UdnW5Bq>S',
    database: 'u548081906_digitalocean'
});


export default connection;
