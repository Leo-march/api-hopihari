const http = require('http');
const app = require('./index');

const server = http.createServer(app);
server.listen(3000, () => {
    console.log("Api iniciando na porta 3000");
});