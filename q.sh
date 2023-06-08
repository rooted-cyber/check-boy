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

API_ID=

API_HASH=

REDIS_URI=

REDIS_PASSWORD=

SESSION=

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
