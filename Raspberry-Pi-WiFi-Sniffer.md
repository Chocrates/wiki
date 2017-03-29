* Install Ubuntu Mate - [Install link here](https://ubuntu-mate.org/raspberry-pi/)
* using raspi-config disable x11 initilization
    * Enable SSH
* Start following [this](https://sandilands.info/sgordon/capturing-wireless-lan-with-ubuntu-tcpdump-kismet) - gah, [turns out](https://security.stackexchange.com/questions/121538/turn-rpi3-wi-fi-adapter-into-monitor-mode-using-airmon-ng) rpi3 broadcom drivers don't support monitor mode.
    * Not dead yet
* [Nexmon drivers to the rescue](https://github.com/seemoo-lab/nexmon)
    * [Need to get libisl](http://stackoverflow.com/questions/33734143/gcc-unable-to-find-shared-library-libisl-so)
