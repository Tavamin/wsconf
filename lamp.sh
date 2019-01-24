menu() {
	echo "============================="
	echo "1.install apache"
	echo "2.Firewall status"
	echo "3.check apache status"
	echo "4.install mysql"
	echo "5.install php"
	echo "6.restart apache"
	echo "7.install vsftpd"
	echo "8.enable firewall"
	echo "9.disable firewall"
	echo "10.awllow ports"
	echo "11.denied ports"
	echo "12.add user"
	echo "13.make ftp directory and set permissions"
	echo "14.restart vsftpd"
	read num
}
menu
while(($num!=14))
do
	if(($num==1))
	then
		echo "apt update:"
		sudo apt-get update
		echo "apache2:"
		sleep 1
		sudo apt-get install apache2
		echo "#############"
		echo "done!"
		echo "#############"
		sleep 1
		menu
	elif(($num==2))
	then
		sudo ufw status
		sleep 2
		menu
	elif(($num==3))
	then
		sudo systemctl status apache2
		echo "#############"
		echo "done!"
		echo "#############"
		sleep 1
		menu
	elif(($num==4))
	then
		sudo apt-get mysql-server
		echo "#############"
		echo "done!"
		echo "#############"
		menu
	elif(($num==5))
	then
		sudo apt install php libapache2-mod-php php-mysql
		echo "#############"
		echo "done!"
		echo "#############"
		menu
	elif(($num==6))
	then
		sudo systemctl restart apache2
		echo "############"
		echo "done!"
		echo "############"
		menu
	elif(($num==7))
	then
		sudo apt-get install vsftpd
		echo "############"
		echo "done!"
		echo "############"
		menu
	elif(($num==8))
	then
		sudo ufw enable
		echo "############"
		echo "done!"
		echo "############"
		menu
	elif(($num==9))
	then
		sudo ufw disable
		echo "############"
		echo "done!"
		echo "############"
		menu
	elif(($num==10))
	then
		echo "enter port"
		read port
		echo "protocol"
		read prot
		sudo ufw allow $port/$prot
		echo "Done!"
		sleep 1
		menu
	elif(($num==11))
	then
		echo "enter port"
		read po
		echo "enter protocol"
		read pr
		sudo ufw deny $po/$pr
		echo "Done!"
		sleep 1
		menu
	elif(($num==12))
	then
		echo "enter username"
		read un
		sudo adduser $un
		echo "Done!"
		sleep 1
		menu
	elif(($num==13))
	then
		echo "enter available user name"
		read aun
		echo "usermod?"
		read umod
		echo "group?"
		read gp
		sudo mkdir /home/$aun/ftp
		sudo chown $umod:$gp /home/$aun/ftp
		sudo chmod a-w /home/$aun/ftp
		echo "============="
		echo "Done!"
		echo "============="
		menu
	elif(($num==14))
	then
		sudo systemctl restart vsftpd
		sleep 1
		echo "done"
		menu
	fi
done

