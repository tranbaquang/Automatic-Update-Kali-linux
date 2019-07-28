#!/bin/sh
main(){
    if [ "$(id -u)" != "0" ]
    then 
        echo "[\e[91m WARN! \e[0m] Hãy chạy quyền root để sử dụng script này !!! "
        echo "[\e[93m START \e[0m]  Nhập mật khẩu của root"
        su -
        su root
        main
        exit
    else
        clear
        echo "\e[96m\n         ++ Đợi tí ! kiểm tra mạng đã nhé !!! ++\e[0m\n"
        if [ `ping -c 1 kali.org | grep "1 received" | wc -l` = 0 ] # = 0 là ko có mạng thực hiện then
        then
            clear
            echo "\n\e[31m      /+++++++++++++++++++++++++++++++++++++++++++\\"
            echo "      |Thiết bị của bạn chưa được kết nối internet|"
            echo "      |     Hãy kết nối mạng và thử lại !!!       |"
            echo "      \+++++++++++++++++++++++++++++++++++++++++++/\e[0m\n"
        else
            for i in 3 2 1
            do 
                clear
                echo "\n\e[92m      /+++++++++++++++++++++++++++++++++++++++++++\\"
                echo "      |      Đã kết nối internet. Bắt đầu !!!     |"
                echo "      \+++++++++++++++++++++++++++++++++++++++++++/\e[0m\n"
                echo "\n                           $i"
                sleep 1
            done
            clear
            #start
            chmod 777 SoftWare.sh
            chmod 777 Update.sh
            ./Update.sh
        fi
    fi    
    exit
}
main