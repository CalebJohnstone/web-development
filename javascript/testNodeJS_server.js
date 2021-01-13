const http = require('http');

const dataSent = JSON.stringify({
    key: 'Justin Bieber'
});

//options to be used by the request
var options = {
    host: 'localhost',
    port: 3000,
    path: '/COS216/HA/javascript/RedPillServer.js', //C:\xampp\htdocs\COS216\HA\javascript\RedPillServer.js OR /COS216/HA/javascript/RedPillServer.js
    method: 'GET',
    headers: {
        'Content-Type': 'application/json',
        'Content-Length': dataSent.length
    },
    duck: "fish"
};

//callback function is used to deal with the response
var callback = function (response) {
    //continuously update stream with data
    var body = '';
    response.on('data', function(data){
        body += data;
    });

    response.on('end', function(){
        //data received completely
        console.log(body);
        //console.log(response);
    });
};

//make request to RedPill NodeJS server
var req = http.request(options, callback);
//req.write(dataSent);
req.end(dataSent);//(dataSent)

console.log(dataSent);

/*
var https = require('https');

var data = {
    key: "Justin Bieber"
};

var options = {
    host: 'localhost',
    port: 3000,
    path: '/COS216/HA/javascript/RedPillServer.js',
    method: 'POST',
    headers: {
        'Content-Type': 'application/json',
        'Content-Length': data.length
    }
};

var req = https.request(options, res => {
    console.log('statusCode: ${res.statusCode}');

    res.on('data', d => {
        process.stdout.write(d);
    })
})

req.on('error', error => {
    console.error(error);
})

req.write(data);
req.end();
*/