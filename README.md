# docker-boomcatch
A minimal Docker image based on Alpine Linux with a complete package index and it smaller in size.

Visit https://github.com/springernature/boomcatch for the full documentation, arguments, and guides.

A standalone, node.js-based beacon receiver for boomerang. Read more.
at https://github.com/springernature/boomcatch and http://cruft.io/posts/introducing-boomcatch/

Usage
Run Docker Container using this image
To see
the list of command line options
run:

docker run  --name <container-name> <image-name>
Available options are:

--host <name>:
Host name to accept HTTP connections on.
The default is 0.0.0.0 (INADDR_ANY).

--port <port>:
Port to accept HTTP connections on.
Defaults to
80 for HTTP or
443 for HTTPS.

--https:
Start the server
in HTTPS mode.

--httpsPfx:
PFX/PKCX12 string
containing the private key,
certificate and
CA certs
for HTTPS mode.

--httpsKey:
Path to private key file
for HTTPS mode.
Ignored if --httpsPfx is set.

--httpsCert:
Path to certificate file
for HTTPS mode.
Ignored if --httpsPfx is set.

--httpsPass:
Passphrase for
--httpsPfx or --httpsKey options.

--path <path>:
URL path to accept requests to.
The default is /beacon.

--referer <regex>:
HTTP referers to accept requests from.
The default is .*.

--origin <origin>:
Comma-separated list of URL(s)
for the Access-Control-Allow-Origin header.
The default is * (any origin),
specify 'null' to force same origin.

--limit <milliseconds>:
Minimum elapsed time to allow
between requests from the same IP adderss.
The default is 0.

--maxSize <bytes>:
Maximum body size to allow for POST requests.
The default is -1 (unlimited).

--silent:
Prevent the command
from logging output
to the console.

--syslog <facility>:
Use [syslog]-compatible logging,
with the specified facility level.

--workers <count>:
The number of worker processes to spawn.
The default is -1
(one worker per CPU).

--delayRespawn <milliseconds>:
The length of time to delay
before respawning worker processes.
The default is 0.

--maxRespawn <count>:
The maximum number of times
to respawn worker processes.
The default is -1
(unlimited).

--validator <path>:
Validator used to accept or reject request data.
The default is permissive
(always accept requests).

--mapper <path>:
Data mapper used to transform data before forwarding,
loaded with [require].
The default is statsd.

--prefix <prefix>:
Prefix for mapped metric names.
The default is the empty string
(no prefix).

--forwarder <path>:
Forwarder used to send data,
loaded with require.
The default is udp.

--fwdHost <name>:
Host name to forward mapped data to.
The default is 127.0.0.1.
This option is only effective
with the UDP forwarder.

--fwdPort <port>:
Port to forward mapped data on.
The default is 8125.
This option is only effective
with the UDP forwarder.

--fwdSize <bytes>:
Maximum packet size
for forwarded data.
The default is 512.
This option is only effective
with the UDP forwarder.

--fwdUrl <url>:
URL to forward mapped data to.
This option is only effective
with the HTTP forwarder.

--fwdMethod <method>:
Method to forward mapped data with.
The default is GET.
This option is only effective
with the HTTP forwarder.

--fwdDir <path>:
Directory to write mapped data to.
This option is only effective
with the file forwarder.

# Example

docker run -d -p 9000:9000 --name boomcatch-web-server boomcatch/web_server:v1 --port 9000 --prefix "real_user_monitoring" --fwdHost exmaple.udp.server.com --fwdPort 8125

You can view the logs from the demonised container using the following command:
docker logs -f boomcatch-web-server
