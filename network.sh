menu() {
	echo "==================="
	echo "1.ping"
	echo "2.traceroute"
	echo "3.set ip & subnetmask"
	echo "4.new interface"
	echo "5.exit"
	echo "==================="
	read num
}
menu
while(($num!=5))
do
	if(($num==1))
	then
		echo "please enter ip"
		read pip
		echo "count?"
		read cn
		ping -c $cn $pip
		echo "#####################"
		sleep 3
		menu
	elif(($num==2))
	then
		echo "please enter ip"
		read tip
		traceroute $tip
		echo "####################"
		sleep
		menu
	elif(($num==3))
	then
		echo "ip?"
		read ip
		echo "netmask?"
		read netmask
		sudo ifconfig eth0 $ip netmask $netmask
		echo "=== DONE! ==="
		sleep 2
		menu

	elif(($num==4))
	then
		echo "4"
	fi
done
