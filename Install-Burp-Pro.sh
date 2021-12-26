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
echo " Making Directory "
mkdir /opt/Burp 
echo "Done"
echo " Moving Files "
mv burp-pro-loader.jar /opt/Burp/
mv license-generator.jar /opt/Burp/
cd ../
mv burpsuite_pro_v* /opt/Burp/
echo " Done "
echo " Writting Excutable Commands "
echo "cd /opt/burp/ && java --illegal-access=warn  -javaagent:burp-pro-loader.jar -noverify -jar burpsuite_pro_v*.jar" > /bin/burp
chmod +x /bin/burp
echo "cd /opt/burp/ && java -jar license-generator.jar " > /bin/ligen
chmod +x /bin/ligen
echo " Done "
echo " Launching Burp Suite Pro & License Generator "
burp | ligen 



