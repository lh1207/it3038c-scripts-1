var dns = require('dns');
function hostnamelookup(hostname) {
dns.lookup(hostname, function(err, address, family){
    console.log(addresses);
});

}

if (Process.argv.length <= 2) {
console.log("USAGE: " + __filename + "hostname.com")
process.exit(-1)
}

var hostname = process.argv[2]
console.log(`Checking IP of: ${hostname}`)
hostnamelookup(hostname);
