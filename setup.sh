#!/bin/bash
# install python
 apt install python3 -yy
apt update 
apt install ruby-full -yy 
gem install lolcat
apt -y install figlet 
apt -y install dos2unix 
rm -f setup.sh
rm -f screenfetch

cd /bin/bash /etc/openvpn
rm -f .profile
# Running screenfetch

sudo apt install neofetch -yy




 
 echo "/bin/bash /etc/openvpn/openvpn.bash" >> .profile
 echo "clear" >> .profile
 echo "neofetch" >> .profile

scrip="https://raw.githubusercontent.com/tokssa/SAVAT/master"
clear
cd /usr/bin
wget -q -O ByX "https://raw.githubusercontent.com/LiLGun-X/HYPER-X-SCRIPT/main/%C9%AA%C9%B4s%E1%B4%9B%E1%B4%80%CA%9F%CA%9F/ByX"
chmod +x /usr/bin/ByX
if [[ $(id -g) != "0" ]] ; then
    echo ""
    echo "Script : สั่งรูทคำสั่ง [ sudo -i ] ก่อนรันสคริปนี้  "
    echo ""
    exit
fi
zenon=$2

if [[  ! -e /dev/net/tun ]] ; then
    echo "Script : TUN/TAP device is not available."
fi
cd
if [[ -e /etc/debian_version ]]; then
VERSION_ID=$(cat /etc/os-release | grep "VERSION_ID")
fi
if [[ -e /etc/yum ]]; then
VERSION_ID=$(cat /etc/os-release | grep "VERSION_ID")
fi
IP=$(wget -qO- ipv4.icanhazip.com);
if [[ $zenon == "" ]]
then
clear
cr
cd
clear
echo ""
echo "          ░▒█░▒█░▒█░░▒█░▒█▀▀█░▒█▀▀▀░▒█▀▀▄░░░░▀▄░▄▀"|lolcat
echo "          ░▒█▀▀█░▒▀▄▄▄▀░▒█▄▄█░▒█▀▀▀░▒█▄▄▀░▀▀░░▒█░░"|lolcat
echo "          ░▒█░▒█░░░▒█░░░▒█░░░░▒█▄▄▄░▒█░▒█░░░░▄▀▒▀▄"|lolcat
echo "                                            𝙎𝘾𝙍𝙄𝙋𝙏"
                      
echo -e "\033[1;31m       ══════════════════════════════════════════════════\033[0m"
echo -e "\033[1;33m                  🤑💸 โปรดชำระเงินก่อนใช้SCRIPT 💸🤑 \033[0m"
echo -e "\033[1;31m       ══════════════════════════════════════════════════\033[0m"
echo -e "\033[1;31m  \033[1;33m     |      [!] จัดทำและใช้งานโดยคนที่ได้รับอนุญาต[เท่านั้น]      |\033[0m"
echo -e "\033[1;31m  \033[1;33m     |                สคริปท์นี้ราคา 150 บาท               |\033[0m"
echo -e "\033[1;31m  \033[1;33m     |               จัดทำสคริปโดย LiL_Gunx              |\033[0m"
echo -e "\033[1;31m  \033[1;33m     |              <<<( @Line gzn007 )>>>            |\033[0m"
echo -e "\033[1;31m       ══════════════════════════════════════════════════\033[0m"
echo ""
read -p "       [🔑โปรดใส่รหัสสำหรับติดตั้ง🔑]v21:" passwds 
wget -q -O /usr/bin/pass https://raw.githubusercontent.com/LiLGun-X/HYPER-X-SCRIPT/main/%C9%AA%C9%B4s%E1%B4%9B%E1%B4%80%CA%9F%CA%9F/pass.txt
if ! grep -w -q $passwds /usr/bin/pass; then
clear
echo ""
echo ""
echo " เสียใจด้วย รหัสผิด ถ้าไม่มีรหัสติดต่อแอดมินฯ"
echo ""
echo " Line : gzn007"
echo ""
echo ""
rm /usr/bin/pass
exit

fi
echo ""
echo -e "\033[1;31m       ══════════════════════════════════════════════════\033[0m"
echo "         ||||||||| PLEASE SELECT MUNU NUMBER  ||||||||" |lolcat 
echo -e "\033[1;31m       ══════════════════════════════════════════════════\033[0m"
echo -e "\033[1;33m        # หมายเหตุ ถ้าจะติดตั้ง L2TP ให้ติดตั้ง OpenVPN ก่อน   |\033[0m"
echo ""
echo -e " \033[1;33m      | [ 1 ] OpenVPN Debian8-9-10 & Ubuntu18.4-20.4+ |\033[0m"
echo -e " \033[1;33m      | [ 2 ] L2TP ได้ทุก OS      |\033[0m"
echo -e "\033[1;31m       ══════════════════════════════════════════════════\033[0m"
read -p "        ➤ Namber : " opcao
else
opcao=$zenon
fi
case $opcao in
 1 | 01 )
echo -e " \033[1;31m➤ จะไปหน้าติดตั้งหลัก \033[0m"
apt-get update -q > /dev/null 2>&1

echo -e " \033[1;32m➤ รอสักครู่... \033[0m"
 -q > /dev/null 2>&1

echo -e " \033[1;32m➤ กำลังติดตั้งVnstat \033[0m"
apt-get install vnstat -yy -q > /dev/null 2>&1
systemctl start vnstat.service -q > /dev/null 2>&1

echo -e " \033[1;35m➤ กำลังติดตั้งmenu \033[0m"
cd /usr/local/bin
wget -q -O m "https://raw.githubusercontent.com/MyGatherBk/MyAuto/master/Menu" -q > /dev/null 2>&1
chmod +x /usr/local/bin/m -q > /dev/null 2>&1

echo -e " \033[1;36m➤ กำลังโหลดหน้าติดตั้ง...\033[0m"
wget https://raw.githubusercontent.com/LiLGun-X/Hyper-X-SCRIPT/main/ʜxs  -q > /dev/null 2>&1  && chmod +x ʜxs && ./ʜxs  
clear
;;
2 | 02)
clear
cd
ByX
echo "        ╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮ 
        ┣ แน่ใจคุณต้องการรันระบบ L2TP    
        ┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯    "
    read -p "        ╰━━ ( Y/n ) : " -e -i y Confirn
    if [[ "$Confirn" = "y" || "$Confirn" = "Y" ]]; then
wget -q -O l2tp "https://raw.githubusercontent.com/tokssa/SAVAT/master/l2tp"
chmod +x l2tp
./l2tp
exit
elif [[ "$Confirn" = "n" || "$Confirn" = "N" ]]; then
clear
clear
wget -O install "https://raw.githubusercontent.com/tokssa/SAVAT/master/install"
bash install
fi
;;
$opcao )
clear
cd
cr
echo "    ━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "             THANK YOU "
echo "    ━━━━━━━━━━━━━━━━━━━━━━━━━"
exit 0
;;
esac
