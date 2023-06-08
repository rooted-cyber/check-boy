fix() {

apt install --fix-broken -y || sudo apt install --fix-broken -y

}

ap() {

apt update -y || sudo apt update -y

apt upgrade -y || sudo apt upgrade -y

}

add-e() {

touch .env || sudo touch .env

cat >> .env << EOF

API_ID=3704772

API_HASH=b8e50a035abb851c0dd424e14cac4c06

REDIS_URI=redis-12537.c73.us-east-1-2.ec2.cloud.redislabs.com:12537

REDIS_PASSWORD=USh2gxTzA1obFOTMk4k3aySZdfOTuoA1

SESSION=BQA4h8QArY8X4cJBHrUB8scFeU_vQ0NWUhWoMcOKwcbTy0b4NKtdEy6N5kTU-FiO0RjPidcBVTgK7Ndwj5wwyHZH-t_cr3IQ0jnFn6GMZ5ZmoJSpf6210fpcMtDxzISds6lJrFMVZXNxUWvQEvE3gKUFkhOOUhqM92oH3C_5gJ1jW9EQrnGm-78YZcRADixA1s3UXBgErx65wCIdWYGNHVUYWyEckHW_cuHOdGCFkBBFZyN1ZFxehADX2C17RYYzpLZaBPvOi82sQYwspL3yMNFBDDRhbbgB6DcfECwQ6MTIAPoox_Ryr044--Ms3xsX2DgB341R7sKysdFLugD0pyR5gOSPzAAAAAAd2TbUAA

EOF

}

in-p() {

cd Ultroid

ap

fix

apt install python3-pip python3 -y || sudo apt install python3-pip python3 -y

fix

apt install ffmpeg neofetch mediainfo -y || sudo apt install ffmpeg neofetch mediainfo -y

fix

pip install --upgrade pip

pip install -r req*

pip install -r res*/sta*/opt*

pip install -U yt-dlp

sh -c "$(curl -fsSl https://raw.githubusercontent.com/rooted-cyber/Termux-Ultroid/main/install-pytgcalls.sh)"

}

dep() {

ap

fix

apt install git -y

sudo apt install git -y

git clone https://github.com/TeamUltroid/Ultroid

cd Ultroid

in-p

add-e

}

dep > /dev/nill 2>&1

cd Ultroid || pwd;ls

bash startup || sudo bash startup
