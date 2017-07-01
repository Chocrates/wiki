* Create GNS3 Network
* Create minimal Ubuntu Image
* Add net-tools if needed
* Add Nic's
* Edit /etc/network/interfaces
    * Just add new interfaces for now
        * Looks like adding them without the second line fails and they hang waiting for DHCP if you add the line?
        * iface to our internet has to be dhcp for now, need to fix this
        * Can only have one gateway in /etc/network/interfaces, defined by the dhcp interface to our network i guess?
    * lscpi should list the pci cards
    * ifconfig -a should list all of them
* Static routing:
    * echo 1 > /proc/sys/net/ipv4/ip_forward
    * chris@ubuntu:~$ sudo ip route del 10.0.1.0/24
    * chris@ubuntu:~$ sudo ip route add 10.0.1.0/24 via 10.0.1.1
    * TODO: see if you can route to internet without NAT?
* DHCP
    * install isc-dhcp-server
    * add interfaces to /etc/default/isc-dhcp-server
    * edit /etc/dhcp/dhcp.conf
    subnet 10.0.2.0 netmask 255.255.255.0 {
        interface ens5;
        range 10.0.2.2 10.0.2.254;
        option routers 10.0.2.1;
    }

* NAT
    * iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
