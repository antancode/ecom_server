const express   = require('express');
const cors      = require('cors');
const os        = require('os');
const cluster   = require('cluster');
const app       = express();
const { router }        = require('./src/module/router');

var allowdomain = ['http://localhost:3000']
const corsvalidate = (req, callback) => {
    var crosorigin;
    if (allowdomain.indexOf(req.header('Origin')) !== -1) {
        crosorigin = { origin: true } 
    } else {
        crosorigin = { origin: false } 
    }
    callback(null, crosorigin);
}

app.use(cors(corsvalidate));
app.use(express.json());
app.use(router);

if(cluster.isMaster){
    const cpus = Math.ceil(os.cpus().length / 2);
    for (let i = 0; i < cpus; i++) {
        cluster.fork();        
    }
}else{
    app.listen('4000', () => {
        console.log(`Server [${process.pid}] connected...`);
    });
}
