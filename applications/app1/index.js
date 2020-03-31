const http = require('http');


const PORT = process.env.port || 8080
const requestListener = (req, res) => {
    res.writeHead(200);
    res.end('Hello, World!');
}

const server = http.createServer(requestListener);
server.listen(PORT, () => {
    console.log("Listening on ", PORT)
});