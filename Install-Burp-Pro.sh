#!/bin/bash
sudo su
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
echo " Installing Java "
dpkg-query -W -f='${binary:Package}\n' | grep -E -e '^(ia32-)?(sun|oracle)-java' -e '^openjdk-' -e '^icedtea' -e '^(default|gcj)-j(re|dk)' -e '^gcj-(.*)-j(re|dk)' -e '^java-common' | xargs apt-get -y remove
apt-get -y autoremove
dpkg -l | grep ^rc | awk '{print($2)}' | xargs apt-get -y purge
bash -c 'ls -d /home/*/.java' | xargs rm -rf


echo " Making Directory "
sleep 2
mkdir /opt/Burp 
echo "Done"
sleep 2
echo " Moving Files "
sleep 5
mv burp-pro-loader.jar /opt/Burp/
mv license-generator.jar /opt/Burp/
cd ../
mv burpsuite_pro_v* /opt/Burp/
sleep 30
echo " Done "
sleep 2
echo " Writting Excutable Commands "
sleep 5
echo "cd /opt/burp/ && java --illegal-access=warn  -javaagent:burp-pro-loader.jar -noverify -jar burpsuite_pro_v*.jar" > /bin/burp
chmod +x /bin/burp
echo "cd /opt/burp/ && java -jar license-generator.jar " > /bin/ligen
chmod +x /bin/ligen
echo " Done "
sleep 2
exit
echo " Launching Burp Suite Pro & License Generator "
sleep 5
burp | ligen 



