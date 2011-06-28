# IPTables setup and configuration script

## Credits

This script is based on the work of Bob Sully, you can find more information
at http://www.malibyte.net/iptables/scripts/fwscripts.html

## Instructions

In order to install you have two options:

### Automatic install
* Run setup.sh script as root

### Manual install
* Create /etc/firewall directory
* copy all configuration files (firewall.\*) to /etc/firewall
* copy firewall file to /etc/init.d

## Configuration
* Edit /etc/firewall.conf as needed
* Add your DNS servers to /etc/firewall.dns 
* Add IP addresses to blacklist to /etc/firewall/firewall.banned
* Add custom iptables rules to /etc/firewall/firewall.local

## Running the script
* /etc/init.d/firewall start
* /etc/init.d/firewall stop
* /etc/init.d/firewall restart|reload
* /etc/init.d/firewall disable

## NOTES
* Stopping the firewall causes iptables to DROP everything and only ACCEPT from loopback
* Disabling the firewall causes iptables to ACCEPT everything from anywhere

