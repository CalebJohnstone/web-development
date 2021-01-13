const http = require('http');
const hostname = '127.0.0.1';

const minimist = require('minimist');
const args = minimist(process.argv.slice(2));
const port = args['port'];//--port=3000

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World, you used port number: ' + port);
}).listen(port);