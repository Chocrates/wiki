* [S3 backed CMS](https://github.com/A-Helberg/adlet)
* [Blog](https://chrisramsay.co.uk/posts/2014/04/soil-temperature-monitoring-part-one/) on the soil temperature sensor
    * [Cheap waterproof sensor](https://www.adafruit.com/products/381)
    * [Expensive soil probe](https://www.adafruit.com/products/1298)
    * [Adafruit tutorial](https://learn.adafruit.com/adafruits-raspberry-pi-lesson-11-ds18b20-temperature-sensing/hardware) on hooking up the cheap sensor to the rpi
* [Thermosiphon](http://www.appropedia.org/Thermosiphon) as potential soil cooling method
    * Idea is to circulate water down below 30 cm to 100cm and to an inch or two below the soil and use the sun to cycle it
    *  May require a solar collector pushing the less dense hot water to a tank (white and shaded?) then the cool water at the bottom can circulate back to the collector cooling down deep in the soil and hopefully taking heat from the top of the soil to the collector
    * Need the temperature sensor to both figure out of the temperature gradient is big enough to make this work and to confirm that it is doing anything
* [Note on proper user account already exists information leakage](https://security.stackexchange.com/a/40695/19740) - User experience usually trumps preventing the account name from leaking)  
* [Let them eat dirt](https://www.amazon.com/Let-Them-Eat-Dirt-Oversanitized/dp/1616206497/ref=sr_1_1?ie=UTF8&qid=1478753933&sr=8-1&keywords=let+them+eat+dirt) - Book on childhood microbiome and how it needs to get attacked to grow strong
* Network Security
    * Network Monitoring
        * Design network such that we can tap and scan all traffic for signatures
        * [3 Port Ethernet Network Tap](http://www.instructables.com/id/Make-a-Passive-Network-Tap/)
            * Maybe build a rpi case with the network tap built in? - [LifeHacker link on something similar](https://www.lifehacker.com.au/2015/11/how-to-build-a-portable-hacking-station-with-a-raspberry-pi-and-kali-linux/)
        * [4 Port Ethernet Tap](http://www.enigmacurry.com/articles/building-an-ethernet-tap//) - Mirrors the transmit lines of each input port to the output port
        * [SiLK Instructions?](https://tools.netsa.cert.org/confluence/pages/viewpage.action?pageId=23298051)
        * [Snort running on computer on tap](http://www.snort.org)
    * Anti-Virus/Anti-Malware
        * Linux options
            * [ClamAV](https://www.clamav.net/)
            * [Comodo](https://www.comodo.com/home/internet-security/antivirus-for-linux.php?track=8251)
            * [Eset - Non free but has good review, also only one with a desktop linux client afaik](https://www.eset.com/us/home/antivirus-linux/#?years=2)
                * [Admittedly few year old comparison](http://www.networkworld.com/article/2989137/linux/av-test-lab-tests-16-linux-antivirus-products-against-windows-and-linux-malware.html)
            * [chkrootkit](http://www.chkrootkit.org/)
        * Windows/macOS/Android
            * [Kaspersky Total Security - 5 Devices](https://store.kaspersky.com/store?Action=DisplayPage&Env=BASE&Locale=en_US&SiteID=kasperus&id=QuickBuyCartPage)
* [Bird Box and house sparrow info](http://www.sialis.org/index.html)
* [nginx -> docker image reverse proxy](http://blog.florianlopes.io/host-multiple-websites-on-single-host-docker/)
    
* [Enable Ubuntu serial console for virtual machines](https://help.ubuntu.com/community/SerialConsoleHowto)
    * Try adding console=ttyS0,115200n8 to the GRUB_CMDLINE_LINUX variable in /etc/default/grub and running update-grub
* [Spark - Exercise and the brain](https://www.amazon.com/Spark-Revolutionary-Science-Exercise-Brain/dp/0316113514)