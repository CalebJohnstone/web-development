/*
var express = require('express');
var app = express();
var bodyParser = require('body-parser');

//create application/x-www-form-urlencoded parser
var urlencodedParser = bodyParser.urlencoded({extended: false});

const minimist = require('minimist');
const args = minimist(process.argv.slice(2));
const port = args['port'];//--port=3000

var cors = require('cors')
app.use(cors());

var server = app.listen(port, function(){
  /*
  res.setHeader('Access-Control-Allow-Origin', 'localhost');
  res.statusCode = 200;

  var responseText = ;
  res.write(responseText);
  res.end();
  //

  var host = server.address().address;
  var port = server.address().port;
  console.log("RedPill Express.js server successfully created :)");
});

app.get('/process_get', function (req, res) {
  var response = {
    name: 'hello world buisdfhiusdhg'
  };

  console.log(response);
  res.end(JSON.stringify(response));
})

console.log("srsdgherhbtuib");
*/

/*
app.post('/process_post', urlencodedParser, function(req, res){
    //prepare response output in JSON format
    response = {
        egg: "Hello " + req.body.key
    };

    console.log(response);
    res.end(JSON.stringify(response));
});
*/

var http = require('http');

var cors = require('cors')
//app.use(cors());

var url = require('url');

const minimist = require('minimist');
const args = minimist(process.argv.slice(2));
const port = args['port'];//--port=3000

//create a server
var server = http.createServer(function(request, response){
    //response.writeHead(200, { "application/json" })
    response.setHeader('Access-Control-Allow-Origin', '*');
    response.setHeader("Access-Control-Allow-Headers", "Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
    response.statusCode = 200;

    console.log(url.parse(request.url, true).host);

    console.log("url=" + request.url);

    //response.write("gfdhdhfgdhdgerdtrtsdgt");
    response.end("gfdhdhfgdhdgerdtrtsdgt");
}).listen(port);

/*
server.on('request', function(request, response){

})
*/