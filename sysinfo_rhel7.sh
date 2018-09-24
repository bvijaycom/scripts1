#/bin/bash
###########################################################################################################

DATE=`/bin/date +date_%d-%m-%y_time_%H-%M-%S`
Time(){

###### STARTING PROGRAMMING AND TYPING THE USER INTERFACE ##########
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

~~~~~~~~~~~~~~
echo "<br>"
echo " Server Time : `date` <br>"
echo "<br>"
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
########### START SCRIPT MAIN PROGRAMMING AND COMMANDS WRITING #####################
}
GenInfo(){
## --------------------------------------<General Information>-----------------------------------##
echo "___________________________________________________________________________________<br>"
echo "**** Server Information****<br>"
echo "___________________________________________________________________________________<br>"
echo " Host Name - `hostname`<br>"
echo " Architecture - `arch`<br>"
echo " Kernel Version `uname -r`<br>"
echo " O/S Vendor    `cat /etc/os-release|grep -i PRETTY | cut -c 13-` <br>"
echo " O/S Release   `cat /etc/redhat-release`<br>"
echo " Logged in as a `whoami` <br>"
echo " The Number Of The Users connected the Server `users | wc -w` Users <br>"
echo " The System Uptime = `uptime | awk '{ gsub(/,/, ""); print $3 }'` (Hrs:Min)<br>"
echo " The Run level Of Current OS is `runlevel`<br>"
echo " The Number OF Running Process :`ps ax | wc -l`<br>"
echo "___________________________________________________________________________________<br>"
## --------------------------------------<General Infromation/end>-------------------------------##
}
SysInfo(){ ## --------------------------------------<System Infromation>---------------------------------------##
echo "___________________________________________________________________________________<br>"
echo "****The System Information****<br>"
echo "___________________________________________________________________________________<br>"
echo " `dmidecode -t system | grep -i 'Manufacturer'` <br>"
echo " `dmidecode -t system | grep -i 'Product Name'`<br>"
echo " `dmidecode -t system | grep -i Version`<br>"
echo " `dmidecode -t system | grep -i Serial`<br>"
echo "___________________________________________________________________________________<br>"
## --------------------------------------<System Information/end>-----------------------------------##

}
CPUInfo(){
echo "___________________________________________________________________________________<br>"
echo "****The CPU Information****<br>"
echo "___________________________________________________________________________________<br>"
echo "You Have `grep -c 'processor' /proc/cpuinfo` CPU<br>"
echo "CPU model name is `awk -F':' '/^model name/ { print $2 }' /proc/cpuinfo`<br>"
echo "CPU vendor`awk -F':' '/^vendor_id/ { print $2 }' /proc/cpuinfo`<br>"
echo "CPU Speed`awk -F':' '/^cpu MHz/ { print $2 }' /proc/cpuinfo`<br>"
echo "CPU Cache Size`awk -F':' '/^cache size/ { print $2 }' /proc/cpuinfo`<br>"
echo "___________________________________________________________________________________<br>"
}
MemInfo(){
echo "___________________________________________________________________________________<br>"
echo " ****The Memory Information****<br>"
echo "___________________________________________________________________________________<br>"
echo "Total Memory = `awk -F':' ' /^MemTotal/ { print $2}' /proc/meminfo`<br>"
echo "___________________________________________________________________________________<br>"
echo "Phyiscal Memory =`dmidecode -t memory | grep -i size`<br>"
echo "___________________________________________________________________________________<br>"
echo "Swap Memory = `cat /proc/meminfo |grep -i swap`<br>"
echo "___________________________________________________________________________________<br>"
}
FileSInfo(){
echo "___________________________________________________________________________________<br>"
echo "*****File Systems Information******<br>"
echo "<pre>`df -h`&nbsp;&nbsp</pre><br>"
echo "___________________________________________________________________________________<br>"
echo "*****FileSystem Mount Details********<pre>`cat /etc/fstab` &nbsp;&nbsp</pre><br>"
echo "___________________________________________________________________________________<br>"
echo "*****Disks Details***********<pre>`/sbin/fdisk -l`&nbsp;&nbsp;</pre><br>"
echo "___________________________________________________________________________________<br>"

echo "Logical Volume Management<br>"
echo "___________________________________________________________________________________<br>"
echo "Physical Volume Details<pre>`pvdisplay`&nbsp;</pre><br>"
echo "___________________________________________________________________________________<br>"
echo "Volume  Group Details<pre>`vgdisplay`&nbsp;</pre><br>"
echo "___________________________________________________________________________________<br>"
echo "Logical Group Details<pre>`lvdisplay`&nbsp;</pre><br>"
echo "___________________________________________________________________________________<br>"
}
HardwareInfo(){
echo "___________________________________________________________________________________<br>"
echo "******PCI devices On MOtherboard information {detailed}******<br>"
echo "___________________________________________________________________________________<br>"
echo "<pre>`lspci -tv`&nbsp;&nbsp;</pre><br>"
echo "************SCSI INFORMATION*****************<pre>`cat /proc/scsi/scsi` &nbsp;nbsp;</pre><br>"
echo "************IO Ports INFORMATION***************<pre>`cat /proc/ioports` &nbsp;$nbsp;</pre><br>"
echo "***********Interupts INFORMATION***************<pre>`cat /proc/interrupts` &nbsp;$nbsp;</pre><br>"
echo "___________________________________________________________________________________<br>"
}
ModulesInfo(){
echo "___________________________________________________________________________________<br>"
echo "******Server Modules Information******<br>"
echo "___________________________________________________________________________________<br>"
echo "<pre>`lsmod`&nbsp;&nbsp;</pre><br>"
echo "___________________________________________________________________________________<br>"
}
ListInfo(){
echo "___________________________________________________________________________________<br>"
echo "***********List ALL file Details**********<br>"
echo "___________________________________________________________________________________<br>"
echo "******/Var Information******* <pre> `ls -ltr /var` </pre><br>"
echo "******/opt Information******* <pre> `ls -ltr /opt` </pre><br>"
echo "******/log Information******* <pre> `ls -ltr /var/log` </pre><br>"
echo "*****/home Information******* <pre> `ls -ltr /home`   </pre><br>"
echo "*****/tmp  Information******* <pre> `ls -ltr /tmp` </pre><br>"
echo "*****/etc Information******** <pre> `ls -ltr /etc` </pre><br>"
echo "___________________________________________________________________________________<br>"
}
BootInfo(){
echo "___________________________________________________________________________________<br>"
echo "******Server Boot Information******<br>"
echo "___________________________________________________________________________________<br>"
echo "<pre>`cat /etc/grub.conf`&nbsp;&nbsp;</pre><br>"
echo "*******BOOT File Details**********<pre>`ls -l /boot`&nbsp;nbsp;</pre><br>"
echo "___________________________________________________________________________________<br>"
}
ProcessInfo(){
echo "___________________________________________________________________________________<br>"
echo "******Server Process information {detailed}******<br>"
echo "___________________________________________________________________________________<br>"
echo "<pre>`systemctl -a|grep -i running`</pre><br>"
echo "**********Server No. of Process running***********<pre>`ps -ef`</pre><br>"
echo "___________________________________________________________________________________<br>"
}
DNSInfo(){
echo "___________________________________________________________________________________<br>"
echo "******DNS Server Information******<br>"
echo "___________________________________________________________________________________<br>"
echo "<pre>`cat /etc/resolv.conf`</pre><br>"
echo "___________________________________________________________________________________<br>"
}
NetInfo(){
echo "___________________________________________________________________________________<br>"
echo "********Network Information********<br>"
echo "___________________________________________________________________________________<br>"
echo "<pre>`/sbin/ifconfig`&nbsp;&nbsp;</pre><br>"
echo "**********ETHTOOL INFORMATION*********<pre>`ethtool eth0*`</pre><br>"
echo "___________________________________________________________________________________<br>"
echo "***********ROUTE DETAILS************<br>"
echo "<pre>`route -n`&nbsp;&nbsp;</pre><br>"
echo "*************TCP Connection DETAILS***********<pre>`netstat -tlpn` &nbsp;&nbsp;</pre><br>"
echo "___________________________________________________________________________________<br>"
echo "*************Network Bonding Details***********<br>"
echo "<pre>`ls -1 /proc/net/bonding/`</pre>&nbsp;&nbsp;&nbsp;<br>"
echo "___________________________________________________________________________________<br>"

}
UsersInfo(){
echo "___________________________________________________________________________________<br>"
echo "******Users & Group  information {detailed}******<br>"
echo "___________________________________________________________________________________<br>"
echo "<pre> `cat /etc/passwd`</pre><br>"
echo "___________________________________________________________________________________<br>"
echo "Group Details <pre> `cat /etc/group`</pre><br>"
echo "___________________________________________________________________________________<br>"
}
cronInfo(){
echo "___________________________________________________________________________________<br>"
echo "******CronJob Scheduled  information******<br>"
echo "___________________________________________________________________________________<br>"
echo "<pre> `crontab -l`</pre><br>"
echo "___________________________________________________________________________________<br>"
echo "Other users cron  <pre> `cd /var/spool/cron ; ls -ltr`</pre><br>"
echo "___________________________________________________________________________________<br>"
}
ConfInfo(){
echo "___________________________________________________________________________________<br>"
echo "***************Operating System Configuration Files***************<br>"
echo "<pre>`cat /etc/sysctl.conf`</pre>"
echo "___________________________________________________________________________________<br>"
}
SoftwareInfo(){
echo "___________________________________________________________________________________<br>"
echo "******Software Inventory  information {detailed}******<br>"
echo "___________________________________________________________________________________<br>"
echo "<pre> `rpm -qa | sort` </pre><br>"
echo "___________________________________________________________________________________<br>"
}
## --------------------------------------<script ending>-----------------------------------------##

Run(){
echo "<!DOCTYPE HTML PUBLIC -//W3C//DTD HTML 3.2//EN><head><body bgcolor="#FFFF00"><center>"
#<html lang="en">
echo "<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>"
#echo "<frameset cols="25%,50%,25%">"
echo "<h2><b><mark><basefont size="15">Linux Server  Configuration Report</mark></b></h2>"
Time
echo "<TABLE BORDER="5"    WIDTH="50%"   CELLPADDING="4" CELLSPACING="3">"
echo "<TR ALIGN="CENTER"><TD>"
GenInfo
echo "</TR></TD></table>"
echo "<li><a href="#SysInfo">System Information</a></li>"
echo "<li><a href="#CPUInfo">CPU Information</a></li>"
echo "<li><a href="#MemInfo">Memory Information</a></li>"
echo "<li><a href="#FileSInfo">Filesystem & Disk Details</a></li>"
echo "<li><a href="#HardwareInfo">Hardware Information</a></li>"
echo "<li><a href="#ModulesInfo">System Modules Information</a></li>"
echo "<li><a href="#ListInfo">System Files Listed Information</a></li>"
echo "<li><a href="#BootInfo">System Boot Details</a></li>"
echo "<li><a href="#ProcessInfo">Current Running Process  Information</a></li>"
echo "<li><a href="#DNSInfo">DNS  Information</a></li>"
echo "<li><a href="#NetInfo">Network  Information</a></li>"
echo "<li><a href="#cronInfo">System Cron  Information</a></li>"
echo "<li><a href="#UsersInfo">Users and Group Information</a></li>"
echo "<li><a href="#ConfInfo">System Configuration Information</a></li>"
echo "<li><a href="#SoftwareInfo">Software Information</a></li>"
echo "<a name="SysInfo"></a>"
SysInfo
echo "<a name="CPUInfo"></a>"
CPUInfo
echo "<a name="MemInfo"></a>"
MemInfo
echo "<a name="FileSInfo"></a>"
FileSInfo
echo "<a name="HardwareInfo"></a>"
HardwareInfo
echo "<a name="ModulesInfo"></a>"
ModulesInfo
echo "<a name="ListInfo"></a>"
ListInfo
echo "<a name="BootInfo"></a>"
BootInfo
echo "<a name="ProcessInfo"></a>"
ProcessInfo
echo "<a name="DNSInfo"></a>"
DNSInfo
echo "<a name="NetInfo"></a>"
NetInfo
echo "<a name="cronInfo"></a>"
cronInfo
echo "<a name="UsersInfo"></a>"
UsersInfo
echo "<a name="ConfInfo"></a>"
ConfInfo
echo "<a name="SoftwareInfo"></a>"
SoftwareInfo
echo "</head></body></center></html>"
}
log=$HOSTNAME-$DATE
Run | tee $log.txt
cp $log.txt $log.html
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#


