#!/bin/bash
H='Home'
R='Rev'
F='Fwd'
P='Play'
S='Select'
L='Left'
R='Right'
D='Down'
U='Up'
B='Back'
IR='InstantReplay'
I='Info'
BS='Backspace'
SH='Search'
E='Enter'
Pn='PowerOn'
Pf='PowerOff'

function do_help {
        echo "Help Menu"
        echo -e "roku_controller.sh -ald -ofsk"
        echo "Usage:"
        echo "  Primary:"
        echo "  -h: This Help Menu"
        echo "  -a: Devices listed in array defined in this script"
        echo "  -l: Devices listed in a file. -l /tmp/devices"
        echo "  -d: Single device. -d 192.168.1.3"
        echo ""
        echo "  Secondary:"
        echo "  -o: Turn TV/Device On. -o"
        echo "  -f: Turn TV/Device Off. -f"
        echo "  -s: Run Setup on TV/Device. -s"
        echo "  -k: Press Button on TV/Device. -k H"
        echo "          H='Home'"
        echo "          R='Rev'"
        echo "          F='Fwd'"
        echo "          P='Play'"
        echo "          S='Select'"
        echo "          L='Left'"
        echo "          R='Right'"
        echo "          D='Down'"
        echo "          U='Up'"
        echo "          B='Back'"
        echo "          IR='InstantReplay'"
        echo "          I='Info'"
        echo "          BS='Backspace'"
        echo "          SH='Search'"
        echo "          E='Enter'"
        echo ""
        echo "Ex:"
        echo -e "\033[0;33mroku_controller -a -k u \e[0m"
        echo " - Will press the up button on all devices listed in the declared array"
        echo "   that is defined in the script. Self contained option for those that"
        echo "   want it."
        echo -e "\033[0;33mroku_controller -l /tmp/list -s \e[0m"
        echo " - Will run setup routine that is defined in script on the devices in"
        echo "   the list."
        echo -e "\033[0;33mroku_controller -d 192.168.65.1 -o \e[0m"
        echo -e " - Will power on TV with matching IP\n"
}

function do_on {
	TV="http://$device:8060/keypress/"
        curl -d '' $TV$Pn
#        echo "curl -d '' $TV$Pn"
}

function do_off {
	TV="http://$device:8060/keypress/"
        curl -d '' $TV$Pf
#        echo "curl -d '' $TV$Pf"
}

function do_setup {
	TV="http://$device:8060/keypress/"
        echo "Change script where necessary in case menu items and order change"
        echo "This should be used only on TVs that have been newly setup with no changes made."
        echo "You can 5secs to cancel before execution"
        sleep 2
        echo "Beginning in 3"
        sleep 1
        echo "...2"
        sleep 1
        echo "...1"
        sleep 1
        echo "...0"

        echo "Disable Screen Saver"
        curl -d '' $TV$H
        sleep .5
        curl -d '' $TV$U
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$S
        sleep .5

        echo "Disable Speakers"
        curl -d '' $TV$H
        sleep .5
        curl -d '' $TV$U
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$S
        sleep .5

        echo "Disable Auto Power Savings"
        curl -d '' $TV$H
        sleep .5
        curl -d '' $TV$U
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$U
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$S
        sleep .5

        echo "Disable Standby LED"
        curl -d '' $TV$H
        sleep .5
        curl -d '' $TV$U
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$U
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$S
        sleep .5

        echo "Disable Fast TV Start"
        curl -d '' $TV$H
        sleep .5
        curl -d '' $TV$U
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$U
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$S
        sleep .5

        echo "Disable USB Media Auto Launch"
        curl -d '' $TV$H
        sleep .5
        curl -d '' $TV$U
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$U
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$D
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$S
        sleep .5
        curl -d '' $TV$U
        sleep .5
        curl -d '' $TV$S
        sleep .5

        echo "Return Home"
        curl -d '' $TV$H
}

function do_keypress {
	TV="http://$device:8060/keypress/"
	#Bash 4.0 way of converting strings to uppercase letters
	case ${KP^^} in
		H )
			KP='Home'
			;;
		R )
			KP='Rev'
			;;
		F )
			KP='Fwd'
			;;
		P )
			KP='Play'
			;;
		S )
			KP='Select'
			;;
		LT )
			KPT='Left'
			;;
		RT )
			KPT='Right'
			;;
		D )
			KP='Down'
			;;
		U )
			KP='Up'
			;;
		B )
			KP='Back'
			;;
		IR )
			KP='InstantReplay'
			;;
		I )
			KP='Info'
			;;
		BS )
			KP='Backspace'
			;;
		SH )
			KP='Search'
			;;
		E )
			KP='Enter'
			;;
		"" )
			echo -e "\033[0;31mInvalid Secondary Option: -k requires an argument\e[0m" 1>&2
			echo "roku_controller.sh -h: For Help Menu"
			exit 1
			;;
		* )
			echo -e "\033[0;31mInvalid Secondary Option: -k $KP \e[0m" 1>&2
			echo "roku_controller.sh -h: For Help Menu"
			exit 1
			;;
	esac
        curl -d '' "$TV$KP"
#        echo "curl -d '' $TV$KP"
}

function do_options {
case $secondary in
	-o )
		do_on $device
		;;
	-f )
		do_off $device
		;;
	-s )
		do_setup $device
		;;
	-k )
		do_keypress $device $KP
		;;
	"" )
		echo -e "\033[0;31mInvalid Secondary Option: -$1 requires an argument\e[0m" 1>&2
		echo "roku_controller.sh -h: For Help Menu"
		exit 1
		;;
	* )
		echo -e "\033[0;31mInvalid Secondary Option: -k $KP \e[0m" 1>&2
		echo "roku_controller.sh -h: For Help Menu"
		exit 1
		;;
esac
}



#Takes arguments for a single device, an array of devices, or a list of devices and generates proper command. 
primary=$1; shift
case $primary in
	-h )
		do_help
		exit 0
		;;
	-a )
		declare -a ipadd=("192.168.2.10" "192.168.2.11")
		for device in "${ipadd[@]}"
		do (
			secondary=$1
			KP=$2
			do_options
		)
		done
		;;
	-d )
		if [[ "$1" =~ (([01]{,1}[0-9]{1,2}|2[0-4][0-9]|25[0-5])\.([01]{,1}[0-9]{1,2}|2[0-4][0-9]|25[0-5])\.([01]{,1}[0-9]{1,2}|2[0-4][0-9]|25[0-5])\.([01]{,1}[0-9]{1,2}|2[0-4][0-9]|25[0-5]))$ ]]
		then
			device=$1; shift
		elif [[ "$1" =~ ^(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))$ ]]
		then
			device=$1; shift
		else
			echo "Fail: Invalid IP Address ($1)"
		exit 1
		fi

		secondary=$1
		KP=$2
		do_options

		shift $((OPTIND -1))
		;;
esac
