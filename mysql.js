const mysql2 = require('mysql2');

const conection = mysql2.createConnection({
    host: 'localhost',
    user:'root',
    password:'root',
    port:3306,
    database:'hopi_hari_db'
});

exports.execute = (query, params = [], pool = conection) => {
    return new Promise((resolve, reject) => {
        pool.query(query, params, (error, results) => {
            if (error) {
                console.error('Erro ao executar a consulta:', error);
                return reject(error);
            }
            resolve(results);
        });
    })
}