#/bin/bash
#colors
rojo='\033[0;31m'
verde='\033[0;32m'
oro='\033[33m'
azul='\033[34m'
reset='\033[0m'

#ascci colors
BLUE="$(printf '\033[34m')"
WHITE="$(printf '\033[37m')"    
BLACK="$(printf '\033[30m')"
RED="$(printf '\033[31m')"
GREEN="$(printf '\033[32m')"
ORANGE="$(printf '\033[33m')"
clear
printf "$BLUE
  _______   ___.        .___             .__       .__        
 /   _____/__ _\_ |__    __| _/____   _____ |__| ____ |__| ____  
 \_____  \|  |  \ __ \  / __ |/  _ \ /     \|  |/    \|  |/  _ \ 
 /        \  |  / \_\ \/ /_/ (  <_> )  Y Y  \  |   |  \  (  <_> )
/_______  /____/|___  /\____ |\____/|__|_|  /__|___|  /__|\____/ 
        \/          \/      \/            \/        \/           \n $reset"
#seq 's,17d'sudominios.sh
main_sub { 
 printf " $RED
${RED}[${WHITE}1${RED}]${ORANGE} BUSCAR SUBDOMINIOS
${RED}[${WHITE}2${RED}]${ORANGE} INSTALL HERRAMIENTAS  
${RED}[${WHITE}3${RED}]${ORANGE} INFO

${RED}[${WHITE}✓${RED}]${GREEN} SELECIONA UNA OPCIÓN  ${WHITE}>> \n" $reset } 
read opc 
sleep 3
#clear
if [ -z $opc ] ; then
main_sub 
fi

case $opc in
1)
echo " " 
 read -p  "${RED}[${WHITE}✓${RED}]${GREEN} INTRODUCE TU HOST ${WHITE} >> " host
 echo "${ORANGE}===================================================="
 printf "${RED}[${WHITE}✓${RED}]${BLUE} ESCANEO DE TU HOST, ESPERA "
nmap -script dns-brute -v -sn $host  > scan.txt
sleep 2
clear
printf "     ${ORANGE}=======${RED}[${BLUE}   RESULTADO ESCANEO, BYE    ${RED}]${ORANGE}=======${WHITE} \n"
echo
tail -n 15 scan.txt 
rm -rf scan.txt;;

2) 
printf " ${ORANGE}=====$GREEN INSTALANDO && ACTUALIZANDO ${ORANGE}===== \n"
apt update && apt upgrade -y
pkg install nmap -y
sleep 3
function subdo ;;

3) 
printf "${GREEN}[ ${WHITE} YUOTUBE ${RED} CHANNEL ${GREEN} ]
${ORANGE} >> ${BLUE} MAXPRO ${WHITE}DEVELORP ${RED}ERROR 404 ${ORANGE} <<
${WHITE} https://youtube.com/@maxprodeloverp4042?si=8GpOtrl4v1cxGkYk \n" ;; 
esac
