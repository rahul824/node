var express = require('express');

// Constants
var PORT = 8080;

// App
var app = express();
app.get('/', function (req, res){
  res.send('Hello Infy my name is Debajyoti');
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);
