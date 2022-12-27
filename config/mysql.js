const mysql      = require('mysql2');//agregado de libreria actual
const connection = mysql.createConnection({
  host     : process.env.SQL_HOST || 'localhost',
  user     : process.env.SQL_USER || 'root',
  password : process.env.SQL_PASS || '',
  database : process.env.SQL_DATABASE || 'tlc_whatsapp'
});

const connect = () => connection.connect(function(err) {
    if (err) {
        console.error('error connecting: ' + err.stack);
        return;
    }

    console.log('Conexion correcta con tu base de datos MySQL')
});

module.exports = {connect, connection}