# Roku CLI/Web Controller

roku_controller.sh -ad/-ld (if -ld {path to list file})/-sd (if -sd {devices IP}) -pf/-po/-sp/-kp (if -kp {u=UP,d=DOWN, etc,etc)

Ex:
roku_controller -ad -kp u - Will press the up button on all devices listed in the declared array that is defined in the script. Self contained option for those that want it.
roku_controller -ld /tmp/list -sp - Will run setup routine that is defined in script on the devices in the list.
roku_controller -sd 192.168.65.1 -po - Will power on TV with matching IP 
