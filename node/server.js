var http = require("http");
var fs = require("fs");
var os = require("os");
var ip = require('ip');

http.createServer(function(req, res){

    if (req.url === "/") {
        fs.readFile("./public/index.html", "UTF-8", function(err, body){
        res.writeHead(200, {"Content-Type": "text/html"});
        res.end(body);
    });
}
    else if(req.url.match("/sysinfo")) {
        myHostName=os.hostname();
        uptimeSeconds=process.uptime();
        roundedUptimeSeconds = Math.round(uptimeSeconds);
        uptimeMinutes= Math.round(uptimeSeconds / 60); 
        uptimeHours = Math.round(uptimeSeconds / 3600);
        uptimeDays = Math.round(uptimeSeconds / 84600);

        var totalMemory = Math.round(os.totalmem() / (1024 * 1024));
        var freeMemory = Math.round(os.freemem() / (1024 * 1024));
        var numCPUs = os.cpus().length;
        html=`    
        <!DOCTYPE html>
        <html>
          <head>
            <title>Node JS Response</title>
          </head>
          <body>
            <p>Hostname: ${myHostName}</p>
            <p>IP: ${ip.address()}</p>
            <p>Server Uptime: Days: ${uptimeDays} Hours: ${uptimeHours} Minutes: ${uptimeMinutes} Seconds: ${roundedUptimeSeconds}</p>
            <p>Total Memory: ${totalMemory} MB </p>
            <p>Free Memory: ${freeMemory} MB </p>
            <p>Number of CPUs: ${numCPUs} </p>            
          </body>
        </html>` 
        res.writeHead(200, {"Content-Type": "text/html"});
        res.end(html);
    }
    else {
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end(`404 File Not Found at ${req.url}`);
    }
}).listen(3000);

console.log("Server listening on port 3000");