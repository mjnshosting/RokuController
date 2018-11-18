# Roku CLI Controller
## Purpose
A bash based setup script is how this solution started so I made 
it into something a bit more robust....ehhh really I just did a 
whole bunch of case statements. 

Anyway its easier for cronjobs and allows for the control or one 
or more devices whether in an array, list, or just one device. 
I hope this helps and I remains simple. The Web counterpart just 
makes a web based remote to handle one or all TVs since my salon 
will have many Roku TVs (7 when all said and done, 3 now) from 
the shops Galaxy Note 4 (used and really cheap). Devices will be
in a SQLite DB with a PHP front end. I will try and keep that 
simple as well. 

## Instructions
copy/download and make executable (chmod +x roku_controller.sh)

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
          <pre><code>
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
          IT='InputTuner'
          IH1='InputHDMI1'  
          IH2='InputHDMI2'  
          IH3='InputHDMI3'  
          IH4='InputHDMI4'  
          </code></pre>  
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
