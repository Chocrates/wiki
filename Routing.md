* Create GNS3 Network
* Create minimal Ubuntu Image
* Add net-tools if needed
* Add Nic's
* Edit /etc/network/interfaces
    * Just add new interfaces for now
        * Looks like adding them without the second line fails and they hang waiting for DHCP if you add the line?
    * lscpi should list the pci cards
    * ifconfig -a should list all of them