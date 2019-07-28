#!/bin/sh

################################################################################################################
######################################### START UPDATE KALI HOÀN CHỈNH #########################################
full(){
    echo "\e[91mTự động hoàn thành setup kali linux lên bản mới nhất (Y/N)? \e[0m"
    read anw 
    if [ $anw = "Y" ] || [ $anw = "y" ]
    then
        color
        sources_list
        unikey
        themes
        lib32
        font
        dpkg --add-architecture i386
        update_vesion_new
        echo ">> Khởi động lại thiết bị của bạn để cảm nhận sự thay đổi (Y/N)? <<"
        read anw2
        if [ $anw2 = "Y" ] || [ $anw2 = "y" ]
        then 
            echo "<< \e[05mThực hiện lệnh khởi động lại !!!\e[0m"
            # shutdown -r now
        else
            echo "\n<< Đã chọn không khởi động lại !!!\n"
            echo ">> Bạn muốn tiếp tục cài thêm các phần mềm chứ (Y/N)?" 
            read anw3
            if [ $anw3 = "Y" ] || [ $anw3 = "y" ]
            then
                tuyChon
            else
                echo "<< KẾT THÚC !!! "
                exit    
            fi    
        fi       
    else
        echo "[\e[91m STOP \e[0m]Quá trình cài đặt tự động chưa được thực hiện !!!\e[0m"
    fi
    exit
}

color(){
    echo "\n[\e[91m CHECK \e[0m] Màu tên người dùng lúc chưa đổi"
    #cp ~/.bashrc /root/Desktop/mauTenNguoiDung_ChuaDoi.txt
    echo "\e[07m_______________________________________________________________________________\n"
    #cat /root/Desktop/mauTenNguoiDung_ChuaDoi.txt
    echo "______________________________________________________________________________\e[0m\n"
    echo "[\e[93m START \e[0m] \e[21mĐổi màu tên người dùng !!!\e[0m \n"
    #   cat txt/color.txt > ~/.bashrc
    echo "[\e[92m DONE! \e[0m] \e[21mĐổi màu xong !!!\e[0m \n"
}

sources_list(){
    echo "[\e[93m START \e[0m] \e[21mĐang tìm sources.list mới nhất\e[0m <<\n"
    echo "[\e[91m CHECK \e[0m] \e[42m`w3m https://docs.kali.org/general-use/kali-linux-sources-list-repositories | grep "deb http" | head -1 `\e[0m\n"
    #    `w3m https://docs.kali.org/general-use/kali-linux-sources-list-repositories | grep "deb http" | head -1 | cat > txt/source.txt`
    #     `cat txt/source.txt >> /etc/apt/sources.list`
    #     echo ">> Nạp xong sources.list\n"
    #     apt-get update
    echo "[\e[92m DONE! \e[0m] \e[92mĐã cập nhật sources.list\e[0m \n"
}

unikey(){
    echo "[\e[93m START \e[0m] \e[21mĐang cài đặt bộ gõ ibus\e[0m \n"
    # apt-get install ibus-unikey -y
    echo "[\e[92m DONE! \e[0m] \e[92mĐã cài đặt xong bộ gõ ibus\e[0m \n"
}

themes(){
    echo "[\e[93m START \e[0m] \e[21mCài đặt giao diện MacOS\e[0m \n"
    #     `cp -r .icons ~`
    echo "[\e[92m DONE! \e[0m] \e[92mCài xong bộ icons MacOS & IOS\e[0m"
    #     `cp -r .themes ~`
    echo "[\e[92m DONE! \e[0m] \e[92mCài xong bộ themes MacOS\e[0m\n"
}

lib32(){
    echo "[\e[93m START \e[0m] \e[21mCài đặt thư viện linux 32bit (lib32)\e[0m \n"
    # apt-get install ia32-libs
    # apt-get install lib32gcc1 libc6-i386 lib32z1 lib32stdc++6
    # apt-get install lib32asound2 lib32ncurses5 lib32gomp1 lib32z1-dev lib32bz2-dev
    # apt-get install g++-multilib
    echo "[\e[92m DONE! \e[0m] \e[92mCài xong bộ thư viện Lib32\e[0m \n"
}

font(){
    echo "[\e[92m START \e[0m] \e[21mCài đặt Microsoft Fonts và 1985 font việt hóa\e[0m \n"
    # apt-get install ttf-mscorefonts-installer
    # mkdir /usr/share/fonts/truetype/newfonts | cp fonts/*ttf fonts/*TTF fonts/*otf /usr/share/fonts/truetype/newfonts
    # fc-cache -f -v
    echo "[\e[92m DONE! \e[0m] \e[21mCài đặt xong Microsoft Fonts và 1985 font việt hóa\e[0m \n"
}

update_vesion_new(){
    echo "[\e[91m CHECK \e[0m] \e[21mPhiên bản hiện tại của máy: \e[92m`uname -v`\e[0m\e[0m\n"    
    echo "[\e[93m START \e[0m] \e[21mChuẩn bị cập nhật phiên bản cài đặt . . .\e[0m\n"
    #     apt update
    echo "[\e[92m DONE! \e[0m] \e[106mCập nhật phiên bản xong\e[0m\n"
    echo "[\e[93m START \e[0m] \e[96mNâng cấp phiên bản mới nhất !!!\e[0m\n"
    echo "[\e[96m WARN! \e[0m] \e[05mQuá trình có thể diễn ra rất lâu\e[0m\n"
    #     apt -y full-upgrade
    echo "[\e[92m DONE! \e[0m] \e[07mXongggggggggggggggggg !!!\e[0m\n"
    echo "[\e[92m DONE! \e[0m] Đã được nâng cấp lên phiên bản mới nhất !!!\n"
    echo "[\e[92m DONE! \e[0m] \e[21mPhiên bản hiện tại là : \e[92m`uname -v`\e[0m\e[0m \n"
}

############################################## END UPDATE KALI #################################################
################################################################################################################



tuyChon(){
    clear
    echo "\e[03;8m`echo "WyBDb3B5cmlnaHQgYnkgfFRy4bqnbiBCw6EgUXVhbmd8IF0gOjoge2h0dHBzOi8vd3d3LmZhY2Vib29rLmNvbS9xdWFuZy50cmFuYmEuMzd9" | base64 -d`\e[0m"
    echo "     \e[05m/----------------------------------------------\\"
    echo "     \e[05m|\e[0m     \e[21m CHỌN CHỨC NĂNG BẠN MUỐN THỰC HIỆN: \e[0m     \e[05m|\e[0m"
    echo "     \e[05m|\e[0m                                              \e[05m|\e[0m"      
    echo "     \e[05m|\e[0m      \e[97;41m 1 \e[0m  \e[91mThay đổi màu user\e[0m                  \e[05m|\e[0m"
    echo "     \e[05m|\e[0m      \e[97;42m 2 \e[0m  \e[92mThêm sources.list mới nhất\e[0m         \e[05m|\e[0m"
    echo "     \e[05m|\e[0m      \e[97;43m 3 \e[0m  \e[93mCài bộ gõ ibus\e[0m                     \e[05m|\e[0m"
    echo "     \e[05m|\e[0m      \e[97;44m 4 \e[0m  \e[94mCài giao diện MacOS\e[0m                \e[05m|\e[0m"
    echo "     \e[05m|\e[0m      \e[97;45m 5 \e[0m  \e[95mUpdate KaliLinux lên bản mới nhất\e[0m  \e[05m|\e[0m"
    echo "     \e[05m|\e[0m      \e[97;46m 6 \e[0m  \e[96mCài một số phần mềm\e[0m                \e[05m|\e[0m"
    echo "     \e[05m|\e[0m      \e[97;40mALL\e[0m  \e[01mCài tất cả\e[0m ( không cài phần mềm )  \e[05m|\e[0m"
    echo "     \e[05m|\e[0m                                              \e[05m|\e[0m" 
    echo "     \e[05m|\e[0m              \e[97mKT. \e[07m>>KẾT THÚC<<\e[0m                \e[05m|\e[0m"
    echo "     \e[05m\----------------------------------------------/\e[0m\n"
    echo "\e[03;8m   `echo "WyBC4bqjbiBxdXnhu4FuIHRodeG7mWMgduG7gSB8VHLhuqduIELDoSBRdWFuZ3wgXSA6OiBodHRwczovL3RyYW5iYXF1YW5nLmNvbWxpLmNvbQ==" | base64 -d`\e[0m "
    while true
    do
        echo -n "-> Nhập tùy chọn của bạn: "
        read chon
        case $chon in
            1)
                echo ">> Bạn chọn \e[96m$chon\e[0m"
                color
                continue_proc_main
            ;;
            2)
                echo ">> Bạn chọn \e[96m$chon\e[0m"
                sources_list
                continue_proc_main
            ;;
            3)
                echo ">> Bạn chọn \e[96m$chon\e[0m"
                unikey
                continue_proc_main
            ;;
            4)
                echo ">> Bạn chọn \e[96m$chon\e[0m"
                themes
                continue_proc_main
            ;;
            5)
                echo ">> Bạn chọn \e[96m$chon\e[0m"
                update_vesion_new
                continue_proc_main
            ;;
            6)
                echo ">> Bạn chọn \e[96m$chon\e[0m"
                #softWare phien ban cu
                ./SoftWare.sh
                exit
            ;;
            ALL|all)
                echo ">> Bạn chọn \e[96m$chon\e[0m"
                full
                continue_proc_main
            ;;
            KT|kt)
                echo ">> Bạn chọn \e[96m$chon\e[0m"
                echo "\e[07m>>Kết Thúc chương trình<<\e[0m"
                exit
            ;;
            *)
                echo " << \e[91mBạn đã nhập sai tùy chọn, vui lòng nhập lại !!!\e[0m >> "
        esac
    done    
    # echo "Tùy chọn của bạn ?\n"
    # select "$ex" in\
    #     "Màu người dùng"\
    #     "thêm sources.list"\
    #     "Bộ gõ ibus"\
    #     "Themes MacOS"\
    #     "Update phiên bản kali"\
    #     "TấtsoftWare
    # do
    #     if [softWare" = "Màu người dùng" ]
    #     thensoftWare
    #         echo "bạn chọn $ex" 
    #     fi
    # done    
}



continue_proc_main(){
    echo -n "\n Bạn có muốn tiếp tục? (Y/N): "
    read anw5
    if [ $anw5 = "y" ] || [ $anw5 = "Y" ] 
    then
        tuyChon
    else
        exit
    fi
}

# ___main___
tuyChon