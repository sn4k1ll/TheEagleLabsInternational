#!/bin/bash
echo "
______________________.____    .___ 
\__    ___/\_   _____/|    |   |   |
  |    |    |    __)_ |    |   |   |
  |    |    |        \|    |___|   |
  |____|   /_______  /|_______ \___|
                   \/         \/    
[...]   Developers:             THE EAGLE LABS International TEAM     [...]
[...]   Version:                1.0.      [...]
[...]   Codename:               'OFFFENSIVE BASH SCRIPT'      [...]
[...]   Report bugs to:         info@theeaglelabs.com     [...]
[...]   Homepage:               https://github.com/chacka0101/      [...]
"
PS3='# Enter option or pulse "Enter" to Menu or other options: '
echo " "
echo "##############################################"
echo "#                  MENU                      #"
echo "##############################################"
echo " "
options=("Requirements" "0-Scope" "1-Recon" "6-Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Requirements")
echo "##############################################"
            echo " Create directories"
	    mkdir /root/teli
	    mkdir /root/teli/Annexes
	    mkdir -p /root/teli/Annexes/{0-Scope,1-Recon,2-Scanning,3-Attack,4-Post,5-Other}
	    mkdir /root/teli/Annexes/0-Scope
	    mkdir -p /root/teli/Annexes/0-Scope/{assets,customerlogo}
	    mkdir /root/teli/Annexes/1-Recon
	    mkdir -p /root/teli/Annexes/1-Recon/{icmp,traceroute}
	    mkdir /opt/telisoftware   
            echo "# OK."
            ;;
        "0-Scope")
echo "##############################################"
            echo "# OK."
            ;;
        "1-Recon")
echo "##############################################"
            echo " Test ICMP:"	    
	    for i in $(cat /root/teli/Annexes/0-Scope/assets/assets.txt); do hping3 -c 2 --icmp $i); done > 1-Recon/icmp/icmp.txt
            echo "# Test ICMP OK."
            ;;
        "6-Quit")
echo "##############################################"
            echo " "	
            ;;
        "Quit")
echo " "
echo " "
echo "#################################################"
echo "#                     BYE                       #"
echo "# If you have an IP address, you are vulnerable #"
echo "#################################################"
            break
            ;;
        *) echo invalid option;;
    esac
done
# END
exit
