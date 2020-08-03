# Google-Assistant-Server-Commands
Send commands to Fedora Server using google assistant and IFTTT

Requires PHP enabled Web Server and IFTTT account

Place PHP script in web directory. Make sure webserver is open to internet.

Place .sh script in user folder (location in php script and shell script must be updated to reflect this location)

Edit visudo to give apache access to execute shell script without requesting password. 

Setup IFTTT to make post request to php script with secure password.
