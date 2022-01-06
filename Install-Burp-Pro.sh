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
                                            (SCRIPT BY KUM4R-PRINC3) 
<--------------------------------------------------------------------------------------------------------------------->                                                                                                                   
 
"
echo " Installing Openjdk-11-Jre-Headless -------------> "
apt install openjdk-11-jre-headless -y
sleep 5
echo " Making Directory -------------> "
sleep 2
mkdir /opt/Burp 
echo " Done -------------> "
sleep 2
echo " Moving Files -------------> "
sleep 5
mv burp-pro-loader.jar /opt/Burp/
mv license-generator.jar /opt/Burp/
mv burp-suite-professional.svg /usr/share/pixmaps/
cd ../
mv burpsuite_pro_v* /opt/Burp/
sleep 30
echo " Done -------------> "
sleep 2
echo " Writting Excutable Commands -------------> "
sleep 5
echo "cd /opt/Burp/ && java --illegal-access=warn  -javaagent:burp-pro-loader.jar -noverify -jar burpsuite_pro_v*.jar" > /bin/burp
chmod +x /bin/burp
echo "cd /opt/Burp/ && java -jar license-generator.jar " > /bin/ligen
chmod +x /bin/ligen
echo " Done -------------> "
sleep 2
echo " Launching Burp Suite Pro & License Generator -------------> "
sleep 5
burp | ligen 



