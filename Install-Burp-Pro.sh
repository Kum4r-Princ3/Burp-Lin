#!/bin/bash
mkdir /opt/Burp 
mv burp-pro-loader.jar /opt/Burp/
mv license-generator.jar /opt/Burp/
cd ../
mv burpsuite_pro_v* /opt/Burp/
echo "cd /opt/burp/ && java --illegal-access=warn  -javaagent:burp-pro-loader.jar -noverify -jar burpsuite_pro_v*.jar" > /bin/burp
chmod +x /bin/burp
echo "cd /opt/burp/ && java -jar license-generator.jar " > /bin/ligen
chmod +x /bin/ligen
burp | ligen 



