const mysql = require('mysql2/promise');

const connection = mysql.createPool({
    host: '89.117.157.45',
    user: 'u548081906_clubindia',
    password: 'J4t?+O3f@d$',
    database: 'u548081906_club777'
});


export default connection;
