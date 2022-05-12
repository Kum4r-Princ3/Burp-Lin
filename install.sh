#!/bin/bash
clear
printf "

      ::::::::::: ::::    :::  :::::::: ::::::::::: :::     :::        :::        ::::::::::: ::::    :::  :::::::: 
         :+:     :+:+:   :+: :+:    :+:    :+:   :+: :+:   :+:        :+:            :+:     :+:+:   :+: :+:    :+: 
        +:+     :+:+:+  +:+ +:+           +:+  +:+   +:+  +:+        +:+            +:+     :+:+:+  +:+ +:+         
       +#+     +#+ +:+ +#+ +#++:++#++    +#+ +#++:++#++: +#+        +#+            +#+     +#+ +:+ +#+ :#:          
      +#+     +#+  +#+#+#        +#+    +#+ +#+     +#+ +#+        +#+            +#+     +#+  +#+#+# +#+   +#+#    
     #+#     #+#   #+#+# #+#    #+#    #+# #+#     #+# #+#        #+#            #+#     #+#   #+#+# #+#    #+#     
########### ###    ####  ########     ### ###     ### ########## ########## ########### ###    ####  ########       
                                                                                                                    
<--------------------------------------------------------------------------------------------------------------------->   
                                            ( SCRIPT BY KUM4R-PRINC3 ) 
<--------------------------------------------------------------------------------------------------------------------->                                                                                                                   
# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"
#....
# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
# ... 
"
printf " <--------------------------------------------------------------------------------------------------------------------->   
                                                    ( INSTALLING OPENJDK-11-JRE ) 
         <---------------------------------------------------------------------------------------------------------------------> "
apt install openjdk-11-jre -y
printf " <--------------------------------------------------------------------------------------------------------------------->   
                                                         ( INSTALLED ) 
         <---------------------------------------------------------------------------------------------------------------------> "
sleep 5         
printf " <--------------------------------------------------------------------------------------------------------------------->   
                                                     ( INSTALLING OPENJDK-11-JDK ) 
         <---------------------------------------------------------------------------------------------------------------------> "
apt install openjdk-11-jdk -y
sleep 5
printf " <--------------------------------------------------------------------------------------------------------------------->   
                                                          ( INSTALLED ) 
         <---------------------------------------------------------------------------------------------------------------------> "
sleep 5
printf " <--------------------------------------------------------------------------------------------------------------------->   
                                                     ( CREATING DIRECTORY ) 
         <---------------------------------------------------------------------------------------------------------------------> "
sleep 2
mkdir /opt/Burp 
printf " <--------------------------------------------------------------------------------------------------------------------->   
                                                     ( DIRECTORY CREATED ) 
         <---------------------------------------------------------------------------------------------------------------------> "
sleep 2
printf " <--------------------------------------------------------------------------------------------------------------------->   
                                                   ( MOVING FILES IN DIRECTORY ) 
         <---------------------------------------------------------------------------------------------------------------------> "
sleep 5
mv burp-pro-loader.jar /opt/Burp/
mv license-generator.jar /opt/Burp/
mv burp-suite-professional.svg /usr/share/pixmaps/
mv burpsuite_pro_v* /opt/Burp/
sleep 30

printf " <--------------------------------------------------------------------------------------------------------------------->   
                                            ( WRITTING EXCUTABLE COMMANDS) 
         <---------------------------------------------------------------------------------------------------------------------> "
sleep 5
echo "cd /opt/Burp/ && java --illegal-access=warn  -javaagent:burp-pro-loader.jar -noverify -jar burpsuite_pro_v*.jar" > /bin/burp
chmod +x /bin/burp
echo "cd /opt/Burp/ && java -jar license-generator.jar " > /bin/ligen
chmod +x /bin/ligen
printf " <--------------------------------------------------------------------------------------------------------------------->   
                                                         ( INSTALLED ) 
         <---------------------------------------------------------------------------------------------------------------------> "
exit



