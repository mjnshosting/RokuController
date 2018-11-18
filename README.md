# Roku CLI/Web Controller

## Help Menu  
roku_controller.sh -ald -ofsk  
Usage:  
  Primary:  
  -h: This Help Menu  
  -a: Devices listed in array defined in this script  
  -l: Devices listed in a file. -l /tmp/devices  
  -d: Single device. -d 192.168.1.3  
  
  Secondary:  
  -o: Turn TV/Device On. -o  
  -f: Turn TV/Device Off. -f  
  -s: Run Setup on TV/Device. -s  
  -k: Press Button on TV/Device. -k H  
          <pre><code>H='Home'</code></pre>  
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
  
Ex:  
roku_controller -a -k u  
 - Will press the up button on all devices listed in the declared array  
   that is defined in the script. Self contained option for those that  
   want it.  

roku_controller -l /tmp/list -s  
 - Will run setup routine that is defined in script on the devices in  
   the list.  

roku_controller -d 192.168.65.1 -o  
 - Will power on TV with matching IP  
 - Output: curl -d '' http://192.168.65.1:8060/keypress/PowerOn  
