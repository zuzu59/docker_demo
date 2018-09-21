# petit script qui fait un ping et met le résultat dans le fichier tutu.txt et demande une input au clavier pour bloquer le script
# zf180921.1045

echo -e "\nStart..."
ping -c 1 8.8.8.8 > tutu.txt
cat tutu.txt

echo -e "\ntouch return for end..."
read zkeyboard
echo -e "Stop...\n"

