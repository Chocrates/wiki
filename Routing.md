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
