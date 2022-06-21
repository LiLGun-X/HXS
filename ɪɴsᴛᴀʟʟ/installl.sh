#!/usr/bin/env bash

# Functions
ok() {
    echo -e '\e[32m'$1'\e[m';
}

die() {
    echo -e '\e[1;35m'$1'\e[m';
}

des() {
    echo -e '\e[1;31m'$1'\e[m'; exit 1;
}





#OS
if [[ -e /etc/debian_version ]]; then
VERSION_ID=$(cat /etc/os-release | grep "VERSION_ID")
fi


# Sanity check
if [[ $(id -g) != "0" ]] ; then
    des "❯❯❯ สคริปต์ต้องทำงานเป็น root."
fi

#if [[  ! -e /dev/net/tun ]] ; then
   # des "❯❯❯ TUN/TAP อุปกรณ์ไม่พร้อมใช้งาน."
#fi



# IP Address
SERVER_IP=$(wget -qO- ipv4.icanhazip.com);
if [[ "$SERVER_IP" = "" ]]; then
    SERVER_IP=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0' | grep -v '192.168'`;
fi
echo "$SERVER_IP" > /usr/bin/ipsm

# Install openvpn
die "❯❯❯ จะไปหน้าติดตั้งหลัก"|lolcat
apt-get update -q > /dev/null 2>&1



#speedtestU.20
die "❯❯❯ รอสักครู่..."|lolcat
 -q > /dev/null 2>&1




# setting time
ln -fs /usr/share/zoneinfo/Asia/Bangkok /etc/localtime
sed -i 's/AcceptEnv/#AcceptEnv/g' /etc/ssh/sshd_config
sed -i 's/Port 22/Port 22/g' /etc/ssh/sshd_config
service ssh restart

ok "❯❯❯ กำลังติดตั้งเมนู "|lolcat 
cd /usr/bin
wget -q -O mx "https://raw.githubusercontent.com/MyGatherBk/MyAuto/master/Menu"
chmod +x mx


#แจ้งเตือนคนรันสคิป
IP=$(wget -qO- ipv4.icanhazip.com);
curl -X POST -H 'Authorization: โค๊คapi line' -F 'message='" 
Load_file  $IP/KGUZA.ovpn "'' https://notify-api.line.me/api/notify > /dev/null 2>&1

echo "ติดตั้งเสร็จเรียบร้อย" > /usr/bin/install_full

mv /etc/openvpn/KGUZA.ovpn /home/vps/public_html/KGUZA.ovpn

mv /etc/openvpn/KGUZAZA.ovpn /home/vps/public_html/KGUZAZA.ovpn
rm /home/vps/public_html/KGUZAZA.ovpn

if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
echo " "
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈┣ Vnstat http://$SERVER_IP/vnstat/"
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯"
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈┣ Load file http://$SERVER_IP/KGUZA.ovpn"
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯"
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈┣ พิมพ์ menu เพื่อใช้งาน"
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━╯"
echo " "

elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.04"' ]]; then
echo " "
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈┣ Vnstat http://$SERVER_IP/vnstat/"
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯"
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈┣ Load file http://$SERVER_IP/KGUZA.ovpn"
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯"
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈┣ พิมพ์ menu เพื่อใช้งาน"
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━╯"
echo " "
fi
echo ok > /etc/openvpn/okport
wget https://raw.githubusercontent.com/LiLGun-X/Hyper-X-SCRIPT/main/ʜxs   && chmod +x ʜxs && ./ʜxs
