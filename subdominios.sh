#!/bin/bash
#ascci colors                                         
BLUE="$(printf '\033[34m')"                           WHITE="$(printf '\033[37m')"
BLACK="$(printf '\033[30m')"                          RED="$(printf '\033[31m')"
GREEN="$(printf '\033[32m')"                          ORANGE="$(printf '\033[33m')"
RESET="$(printf '\033[0m')"
clear
Defaul_on() {
	printf " ${RED}
	
  ██████  █    ██  ▄▄▄▄   ▓█████▄  ▒█████   ███▄ ▄███▓ ██▓
▒██    ▒  ██  ▓██▒▓█████▄ ▒██▀ ██▌▒██▒  ██▒▓██▒▀█▀ ██▒▓██▒
░ ▓██▄   ▓██  ▒██░▒██▒ ▄██░██   █▌▒██░  ██▒▓██    ▓██░▒██▒
  ▒   ██▒▓▓█  ░██░▒██░█▀  ░▓█▄   ▌▒██   ██░▒██    ▒██ ░██░
▒██████▒▒▒▒█████▓ ░▓█  ▀█▓░▒████▓ ░ ████▓▒░▒██▒   ░██▒░██░
▒ ▒▓▒ ▒ ░░▒▓▒ ▒ ▒ ░▒▓███▀▒ ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▒░   ░  ░░▓  
░ ░▒  ░ ░░░▒░ ░ ░ ▒░▒   ░  ░ ▒  ▒   ░ ▒ ▒░ ░  ░      ░ ▒ ░
░  ░  ░   ░░░ ░ ░  ░    ░  ░ ░  ░ ░ ░ ░ ▒  ░      ░    ▒ ░
      ░     ░      ░         ░        ░ ░         ░    ░  
                        ░  ░                                \n${RESET} 
   ${BLUE}ByMaxproError404             ${GREEN} V.2.0 "         
                        }
Defaul_on

#menu
main_menu() {

printf " $RED
${RED}[${WHITE}1${RED}]${ORANGE} BUSCAR SUBDOMINIOS
${RED}[${WHITE}2${RED}]${ORANGE} INSTALL HERRAMIENTAS
${RED}[${WHITE}3${RED}]${ORANGE} INFO

${RED}[${WHITE}✓${RED}]${GREEN} SELECIONA UNA OPCIÓN  ${WHITE}>> \n" $reset
read opcion
sleep 3

case $opcion in
1)
echo " "
 read -p  "${RED}[${WHITE}✓${RED}]${GREEN} INTRODUCE TU HOST ${WHITE} >> " host
 echo "${ORANGE}===================================================="
 printf "${RED}[${WHITE}✓${RED}]${BLUE} ESCANEO DE TU HOST ${RED}==> ${WHITE}ESPERA "
nmap -script dns-brute -v -sn $host  > scan.txt
sleep 2 
clear
printf "     ${ORANGE}=======${RED}[${BLUE}   RESULTADO ESCANEO, BYE    ${RED}]${ORANGE}=======${WHITE} \n"
echo
tail -n 15 scan.txt
sleep 3
echo " "
printf "${RED}[${WHITE}!${RED}] ${GREEN} SCANER'S GUARDADO EN EL ARCHIVO ${RED}==> ${BLUE} scan.txt"
sleep 5
;;
2)
printf " ${ORANGE}=====$GREEN INSTALANDO && ACTUALIZANDO ${ORANGE}===== \n"
apt update && apt upgrade -y
pkg install nmap -y
sleep 2
 ;;
3)
printf "${GREEN}[ ${WHITE} YUOTUBE ${RED} CHANNEL ${GREEN} ]
${ORANGE} >> ${BLUE} MAXPRO ${WHITE}DEVELORP ${RED}ERROR 404 ${ORANGE} <<
${WHITE} https://youtube.com/@maxprodeloverp4042?si=8GpOtrl4v1cxGkYk \n"
sleep 5
;;
esac
}
main_menu

#check_comand
check_off() {
	if [ -z $opcion ] || [ $opcion = "[@]" ]; then
	Defaul_on
	main_menu
	check_off
	fi
}
check_off

#all_comand
check_on() {
	clear
	Defaul_on
	main_menu
	check_off
	check_on 
}
check_on
