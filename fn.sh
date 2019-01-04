menu(){
	echo "============================"
	echo "1. create file"
	echo "2.list directory"	
	echo "3. filter"
	echo "4.creat alias"
	echo "5.distroy alias"
	echo "6. exit"
	echo "============================"
	read num
}
menu
while(($num!=6))
do
	if(($num==1))
	then
		echo "filename?"
		read $fn
		touch $fn
		sleep 1
		echo "done!"
		menu
	elif(($num==2))
	then
		ls -lah > $fn
		sleep 1
		echo "done!"
		menu
	elif(($num==3))
	then
		echo "soon"
	fi
	if(($num==4))
	then
		echo "command"
		read cm
		echo "alias?"
		read al
		alia() {
			alias $al=$cm
			echo "done"
		}
		alia
		menu
	elif(($num==5))
	then
		unalia() {
			unalias $un
			echo "done!"
		}
		echo "allas name?"
		read un
		unalia
		menu
	fi	
done


