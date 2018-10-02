#!/bin/bash
echo " "
echo "############################$(tput setaf 2)Calculating the Resource Utilization, Uptime, Load and Top consuming process$(tput sgr0)####################"
echo " "
sleep 1
echo "########$(tput bold) $(tput setaf 3)Uptime = $(tput setaf 6)`uptime | awk -F " " '{print $3,$4}' | awk -F "," '{print $1}'`$(tput sgr0)###########################"
echo " "
sleep 1
echo "########$(tput bold) $(tput setaf 3)Load average = $(tput setaf 6)`uptime | awk -F "average:" '{print $2}'|column -t`$(tput sgr0)#########"
echo " "
sleep 1
echo "########$(tput bold) $(tput setaf 3)Disk usage$(tput sgr0) ###############################"
echo "$(tput bold) $(tput setaf 6)`df -hP | grep -v "tmpfs"|column -t`$(tput sgr0)"
echo " "
sleep 1
echo "########$(tput bold) $(tput setaf 5)CPU usage = $(tput setaf 6)`(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}' | cut -c1-5 ; echo "%")| tr -s '\n' ' ' | awk -F " " '{print $1,$2}' | sed 's/ //g'`$(tput sgr0) #######################"
echo " "
sleep 1
echo "########$(tput bold) $(tput setaf 5)Top 10 High consuming CPU process$(tput sgr0)#########"
echo "$(tput setaf 6)`ps -eo pcpu,pid,user,cmd | head -1 ; ps -eo pcpu,pid,user,cmd | sort -nr | head | grep -v USER`$(tput sgr0)"
echo " "
sleep 1
echo "########$(tput bold) $(tput setaf 5)Zombie process in the server$(tput sgr0)###############"
echo "$(tput bold) $(tput setaf 6)`ps auxw | grep -i "defunct"`$(tput sgr0)"
echo " "
sleep 1
echo "########$(tput bold) $(tput setaf 1)Memory Usage = $(tput setaf 6)`(vmstat -s | awk  '$0 ~ /total memory/ {total=$1 } $0 ~/free memory/ {free=$1} $0 ~/buffer memory/ {buffer=$1} $0 ~/cache/ {cache=$1} END{print (total-free-buffer-cache)/total*100}' | cut -c1-5 ; echo "%")| tr -s '\n' ' ' | awk -F " " '{print $1,$2}' | sed 's/ //g'`$(tput sgr0) ####################"
echo " "
sleep 1
echo "########$(tput bold) $(tput setaf 1)Top 10 High consuming Memory process$(tput sgr0)######"
echo "$(tput setaf 6)`ps -eo pmem,pid,user,cmd | head -1 ; ps -eo pmem,pid,user,cmd | sort -nr | head | grep -v USER`$(tput sgr0)"
echo " "
sleep 1
echo "########$(tput bold) $(tput setaf 1)Swap usage = $(tput setaf 6) $((Swap=`vmstat -s | awk  ' $0 ~ /total swap/ {total=$1 } $0 ~/free swap/ {free=$1} END{print (total-free)/total*100}'` ; printf "%0.2f\n" $Swap ; echo "%") | tr -s '\n' ' ' | awk -F " " '{print $1,$2}' | sed 's/ //g')$(tput sgr0) ######################"
echo " "
sleep 1
echo "############################$(tput setaf 2)End of the Script$(tput sgr0)##################################################################################"
