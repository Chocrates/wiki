* Install Ubuntu Mate - [Install link here](https://ubuntu-mate.org/raspberry-pi/)
* using raspi-config disable x11 initilization
    * Enable SSH
* Start following [this](https://sandilands.info/sgordon/capturing-wireless-lan-with-ubuntu-tcpdump-kismet) - gah, [turns out](https://security.stackexchange.com/questions/121538/turn-rpi3-wi-fi-adapter-into-monitor-mode-using-airmon-ng) rpi3 broadcom drivers don't support monitor mode.
    * Not dead yet
* [Nexmon drivers to the rescue](https://github.com/seemoo-lab/nexmon)
    * [Need to get libisl](http://stackoverflow.com/questions/33734143/gcc-unable-to-find-shared-library-libisl-so)
* Add [--with-mysql-libraries=/usr/lib/arm-linux-gnueabihf](http://seclists.org/snort/2015/q3/219) to barnyard2 compile
* Distro is: [Debian-6-0](https://www.raspberrypi.org/forums/viewtopic.php?f=36&t=110846)  
* Needed to add the -P option to pulledpork.pl to get it to generate the snort.rules? - [see post here](https://groups.google.com/forum/#!topic/pulledpork-users/7GZz8EBctv8)