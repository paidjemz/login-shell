#!/bin/bash

#COLOUR
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[0;33m'
BlueF='\e[1;34m' #Biru
RESET="\033[00m" #normal
orange='\e[38;5;166m'

echo -e "$red" "PAIDJEMZ WAS HERE"
sleep 2.5 && clear

function username() {
	echo -ne "$cyan" "Masukkan Username: "
	read username
	if [ $username != paidjemz ]; then
		echo "Username anda salah"
		sleep 3 && clear
		username
	else
		pass
	fi
}

function pass() {
	echo -e -n "$cyan" "Masukkan Password: "
	read pass
	if [ $pass == 12345 ]; then
		echo "Password kamu benar..."
		sleep 2 && exit
	else
		echo "Password kamu salah... mohon ulangi lagi"
		clear && sleep 2.5
		./tes.sh 
	fi
}

username
pass