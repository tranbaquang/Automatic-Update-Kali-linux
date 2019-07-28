#!/bin/sh
################################################################################################################
################################ START: MỘT SỐ ỨNG DỤNG QUANG HAY SỬ DỤNG ######################################
chrome(){
    echo "[\e[93m START \e[0m] \e[21mCài đặt google chrome\e[0m "
    # xong
    # wget -P /root/Downloads/chrome https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
    # dpkg -i /root/Downloads/chrome/*deb
    # apt-get install -f -y
    # head -n 49 txt/chrome.txt | cat > /opt/google/chrome/google-chrome
    # tail -n 3 txt/chrome.txt | cat > /etc/apt/sources.list.d/google-chrome.list
    echo "[\e[92m DONE! \e[0m] \e[92mHoàn thành cài đặt Google Chrome\e[0m\n"

}

sublime(){
    echo "[\e[93m START \e[0m] \e[21mTự động cài đặt Sublime Text 3\e[0m \n"
    echo "[\e[91m CHECK \e[0m] Cài đặt GPG key:"
    # wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
    echo "[\e[91m CHECK \e[0m] Đảm bảo apt được thiết lập để hoạt động với các nguồn https:"
    # apt-get install apt-transport-https
    echo "[\e[91m CHECK \e[0m] Chọn bản ổn định để sử dụng:"
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
    echo "[\e[93m WAIT! \e[0m] Cập nhật thay đổi: "
    # apt-get update
    echo "[\e[93m START \e[0m] \e[21mCài đặt Sublime Text 3\e[0m"
    # apt-get install sublime-text
    echo "[\e[92m DONE! \e[0m] \e[92mHoàn thành cài đặt Sublime Text 3\e[0m\n"
    ###
}

vscode(){
    echo "[\e[93m START \e[0m] \e[21mCài đặt Visual Code\e[0m \n"
    # xong
    # wget -P /root/Downloads/vscode https://az764295.vo.msecnd.net/stable/a622c65b2c713c890fcf4fbf07cf34049d5fe758/code_1.34.0-1557957934_amd64.deb 
    # dpkg -i /root/Downloads/vscode/*deb
    # apt-get install -f -y
    echo "[\e[92m DONE! \e[0m] \e[92mHoàn thành cài đặt Visual Code\e[0m \n"
}

vmware(){
    echo "[\e[93m START \e[0m] \e[21mCài đặt VMware-Workstation 15.10\e[0m\n"
    # xong
    # wget -P /root/Downloads/vmware wget https://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-15.1.0-13591040.x86_64.bundle
    # chmod +x /root/Downloads/vmware/*bundle
    echo "Key: "
    echo "\e[91mTUZ3J8-D8F5M-M84LZ-W6WZZ-WP8T6 \n
        AZ5NK-4TGEJ-088PZ-96X5X-ZL2T4\n
        VV510-AWYE1-M85QZ-NMYZG-QA8W6\n
        ZG75A-4DY8K-489TQ-YQNZV-Y2UWA\n
        CY7JA-2LZE4-480CQ-TDM7V-ZK8DF\n
        YA75U-89XE4-08EQY-45WNT-NC890\n
        YV5XR-0AG93-H845Q-DDZQC-M2KWF\n
        AA1JR-0TX86-4847Y-JDQGV-YQKF8\n
        ZA35K-FHX4Q-0848P-MGW5G-N28FD\n
        YZ192-86X1N-H884Q-GWXEC-N7HV0\n
        FZ5XU-40X0H-48EXP-DPYGT-MZKYA\n
        YY3T0-42DEN-H88MZ-RDPEG-Y6RR0\n
        AU75H-2EWE2-M85QQ-JXXNZ-MCHA4\n
        FG3N0-FFD0P-0895Z-64P7C-XQRA2\n
        GG1D8-4QXE1-481NY-C6XQX-Y3U9D\n
        FU58K-2YX9J-M8ETZ-DWNEG-X7KAA\n
        FF788-A1X86-08E9Q-5YN79-XV0YD\n
        FC51U-43Z0L-H85TZ-NZQ5G-PZUW6\e[0m\n"
    # ./*bundle
    echo "[\e[92m DONE! \e[0m] \e[92mHoàn thành cài đặt VMware-Workstation 15.10\e[0m \n"
}

pycharm(){
    echo "[\e[93m START \e[0m] \e[21mCài đặt Pycharm Professinal\e[0m \n"
    ###
    # wget -P /root/Downloads/pycharm https://download-cf.jetbrains.com/python/pycharm-professional-2019.1.2.tar.gz
    # tar -zxvf /root/Downloads/pycharm/*gz
    # w3m https://www.hocpython.com/python-in-the-world/pycharm-license/ | grep 0.0.0.0 | cat >> /etc/hosts
    echo " Key kích hoạt: \n\n\e[91mBTBV1R0CZR-eyJsaWNlbnNlSWQiOiJCVEJWMVIwQ1pSIiwibGljZW5zZWVOYW1lIjoiTXVzaGZpcXVyIFJhaG1hbiIsImFzc2lnbmVlTmFtZSI6IiIsImFzc2lnbmVlRW1haWwiOiIiLCJsaWNlbnNlUmVzdHJpY3Rpb24iOiJGb3IgZWR1Y2F0aW9uYWwgdXNlIG9ubHkiLCJjaGVja0NvbmN1cnJlbnRVc2UiOmZhbHNlLCJwcm9kdWN0cyI6W3siY29kZSI6IklJIiwicGFpZFVwVG8iOiIyMDE5LTExLTI4In0seyJjb2RlIjoiQUMiLCJwYWlkVXBUbyI6IjIwMTktMTEtMjgifSx7ImNvZGUiOiJEUE4iLCJwYWlkVXBUbyI6IjIwMTktMTEtMjgifSx7ImNvZGUiOiJQUyIsInBhaWRVcFRvIjoiMjAxOS0xMS0yOCJ9LHsiY29kZSI6IkdPIiwicGFpZFVwVG8iOiIyMDE5LTExLTI4In0seyJjb2RlIjoiRE0iLCJwYWlkVXBUbyI6IjIwMTktMTEtMjgifSx7ImNvZGUiOiJDTCIsInBhaWRVcFRvIjoiMjAxOS0xMS0yOCJ9LHsiY29kZSI6IlJTMCIsInBhaWRVcFRvIjoiMjAxOS0xMS0yOCJ9LHsiY29kZSI6IlJDIiwicGFpZFVwVG8iOiIyMDE5LTExLTI4In0seyJjb2RlIjoiUkQiLCJwYWlkVXBUbyI6IjIwMTktMTEtMjgifSx7ImNvZGUiOiJQQyIsInBhaWRVcFRvIjoiMjAxOS0xMS0yOCJ9LHsiY29kZSI6IlJNIiwicGFpZFVwVG8iOiIyMDE5LTExLTI4In0seyJjb2RlIjoiV1MiLCJwYWlkVXBUbyI6IjIwMTktMTEtMjgifSx7ImNvZGUiOiJEQiIsInBhaWRVcFRvIjoiMjAxOS0xMS0yOCJ9LHsiY29kZSI6IkRDIiwicGFpZFVwVG8iOiIyMDE5LTExLTI4In0seyJjb2RlIjoiUlNVIiwicGFpZFVwVG8iOiIyMDE5LTExLTI4In1dLCJoYXNoIjoiMTEwODc1NDYvMCIsImdyYWNlUGVyaW9kRGF5cyI6MCwiYXV0b1Byb2xvbmdhdGVkIjpmYWxzZSwiaXNBdXRvUHJvbG9uZ2F0ZWQiOmZhbHNlfQ==-wQ6zKQMYh4XcZ+Rq3FkZCo9kJe9iJYoD1+cxAhVr1oiKOA0ANleB1AiBwlpeIuq6IH9v+Xt3mfONBboolQtbCsSjSuOwphPVP77sK4dzR4Bp5h0IMTlYLTSfYx484VhhuYr74VQT/90iXfKb8E/mFqJZKQQIXOXjfPPeqPsrOToxuXVIbW/i6Sp6Y6bSBYKJp1xtxTxWb/tBn/5zKK5seWS6cb/pttMFXQIFKjma6HXGxNgAlpC5hz20rH3+z4/ltns3ve4rlFn0QtHkBBRqm1G6HKTQkIg/h1cw8aVq0GIGYG6Hol5SNK0wzMB5CTjTOZxCqPb0d5LI7/cXh/i4tw==-MIIElTCCAn2gAwIBAgIBCTANBgkqhkiG9w0BAQsFADAYMRYwFAYDVQQDDA1KZXRQcm9maWxlIENBMB4XDTE4MTEwMTEyMjk0NloXDTIwMTEwMjEyMjk0NlowaDELMAkGA1UEBhMCQ1oxDjAMBgNVBAgMBU51c2xlMQ8wDQYDVQQHDAZQcmFndWUxGTAXBgNVBAoMEEpldEJyYWlucyBzLnIuby4xHTAbBgNVBAMMFHByb2QzeS1mcm9tLTIwMTgxMTAxMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxcQkq+zdxlR2mmRYBPzGbUNdMN6OaXiXzxIWtMEkrJMO/5oUfQJbLLuMSMK0QHFmaI37WShyxZcfRCidwXjot4zmNBKnlyHodDij/78TmVqFl8nOeD5+07B8VEaIu7c3E1N+e1doC6wht4I4+IEmtsPAdoaj5WCQVQbrI8KeT8M9VcBIWX7fD0fhexfg3ZRt0xqwMcXGNp3DdJHiO0rCdU+Itv7EmtnSVq9jBG1usMSFvMowR25mju2JcPFp1+I4ZI+FqgR8gyG8oiNDyNEoAbsR3lOpI7grUYSvkB/xVy/VoklPCK2h0f0GJxFjnye8NT1PAywoyl7RmiAVRE/EKwIDAQABo4GZMIGWMAkGA1UdEwQCMAAwHQYDVR0OBBYEFGEpG9oZGcfLMGNBkY7SgHiMGgTcMEgGA1UdIwRBMD+AFKOetkhnQhI2Qb1t4Lm0oFKLl/GzoRykGjAYMRYwFAYDVQQDDA1KZXRQcm9maWxlIENBggkA0myxg7KDeeEwEwYDVR0lBAwwCgYIKwYBBQUHAwEwCwYDVR0PBAQDAgWgMA0GCSqGSIb3DQEBCwUAA4ICAQAF8uc+YJOHHwOFcPzmbjcxNDuGoOUIP+2h1R75Lecswb7ru2LWWSUMtXVKQzChLNPn/72W0k+oI056tgiwuG7M49LXp4zQVlQnFmWU1wwGvVhq5R63Rpjx1zjGUhcXgayu7+9zMUW596Lbomsg8qVve6euqsrFicYkIIuUu4zYPndJwfe0YkS5nY72SHnNdbPhEnN8wcB2Kz+OIG0lih3yz5EqFhld03bGp222ZQCIghCTVL6QBNadGsiN/lWLl4JdR3lJkZzlpFdiHijoVRdWeSWqM4y0t23c92HXKrgppoSV18XMxrWVdoSM3nuMHwxGhFyde05OdDtLpCv+jlWf5REAHHA201pAU6bJSZINyHDUTB+Beo28rRXSwSh3OUIvYwKNVeoBY+KwOJ7WnuTCUq1meE6GkKc4D/cXmgpOyW/1SmBz3XjVIi/zprZ0zf3qH5mkphtg6ksjKgKjmx1cXfZAAX6wcDBNaCL+Ortep1Dh8xDUbqbBVNBL4jbiL3i3xsfNiyJgaZ5sX7i8tmStEpLbPwvHcByuf59qJhV/bZOl8KqJBETCDJcY6O2aqhTUy+9x93ThKs1GKrRPePrWPluud7ttlgtRveit/pcBrnQcXOl1rHq7ByB8CFAxNotRUYL9IF5n3wJOgkPojMy6jetQA5Ogc8Sm7RG6vg1yow==\e[0m\n"
    # ./pycharm-2019.1.2/bin/pycharm.sh
    echo "[\e[92m DONE! \e[0m] \e[92mHoàn thành cài đặt Pycharm Professinal\e[0m \n"
}

teamview(){
    echo "[\e[93m START \e[0m] \e[21mCài đặt Teamview\e[0m \n"
    ### xong    
    # wget -P /root/Downloads/teamview https://dl.teamviewer.com/download/linux/version_14x/teamviewer_14.2.8352_amd64.deb 
    # dpkg -i /root/Downloads/teamview/*deb
    echo "[\e[92m DONE! \e[0m] \e[92mHoàn thành cài đặt Teamview\e[0m \n"
}

wine(){
    echo "[\e[93m START \e[0m] \e[21mCài đặt Wine\e[0m \n"
    echo "[\e[93m START \e[0m] Cài bộ thư viên 32 bit"
    # dpkg --add-architecture i386
    echo "[\e[96m CREAT \e[0m]\n Thêm sources.list"
    # add-apt-repository ppa:ubuntu-wine/ppa
    echo "\n[\e[91m CHECK \e[0m] Update sources.list"
    # apt-get update
    echo "\n[\e[93m START \e[0m] Cài đặt Wine"
    # apt-get install wine
    echo "[\e[93m START \e[0m] Cài đặt winetricks"
    # apt-get install winetricks
    echo "[\e[92m DONE! \e[0m] \e[92mHoàn thành cài đặt Wine\e[0m \n"
}

tor(){
    echo "[\e[93m START \e[0m] \e[21mCài đặt Trình duyệt mô hình củ hành\e[0m \n"
    # apt-get install tor
    # wget -P /root/Downloads/tor-browser https://dist.torproject.org/torbrowser/8.5.3/tor-browser-linux64-8.5.3_en-US.tar.xz
    # tar xJf /root/Downloads/tor-browser/*tar.xz
    # cat txt/tor.txt > /root/Downloads/tor-browser/tor-browser_en-US/Browser/start-tor-browser
    echo "[\e[93m START \e[0m] \n Khởi chạy Tor-Browser"
    # cd ; cd Downloads/tor-browser_en-US; ./start-tor-browser.desktop
    echo "[\e[92m DONE! \e[0m] \e[92mHoàn thành cài đặt củ hành trình duyệt\e[0m \n"
}

################################# END: MỘT SỐ ỨNG DỤNG QUANG HAY SỬ DỤNG #######################################
################################################################################################################


softWare(){
    clear
    echo "     \e[21m_________________________________________________\e[0m\n"
    echo "            >> CHỌN PHẦN MỀM BẠN MUỐN CÀI ĐẶT <<"
    echo "     \e[21m_________________________________________________\e[0m\n"
    echo -n "\e[97;46m 1 \e[0m \e[96mGoogle Chrome\e[0m\t"
    echo -n "\e[97;45m 2 \e[0m \e[95mSublime Text 3\e[0m\t"
    echo "\e[97;44m 3 \e[0m \e[94mVisual Code\e[0m\n"
    echo -n "\e[97;43m 4 \e[0m \e[93mVMware-Workstation\e[0m\t"
    echo -n "\e[97;42m 5 \e[0m \e[92mPycharm Professinal\e[0m\t"
    echo "\e[97;41m 6 \e[0m \e[91mTeamview\e[0m\n"
    echo "\e[97;46m 7 \e[0m \e[96mWine\e[0m\n"
    echo -n "\e[97;100mALL\e[0m Tất cả\t       "
    echo -n " \e[97;100m ql\e[0m Quay lại\t       "
    echo  " \e[97;100mend\e[0m Thoát\n"
    while true
    do
        echo -n "-> Nhập tùy chọn của bạn: "
        read chon2
        case $chon2 in
            1)
                echo ">> Bạn chọn \e[96m$chon2\e[0m"
                ##
                chrome
                continue_proc_son
            ;;
            2)
                echo ">> Bạn chọn \e[96m$chon2\e[0m"
                ##
                sublime
                continue_proc_son
            ;;
            3)
                echo ">> Bạn chọn \e[96m$chon2\e[0m"
                ##
                vscode
                continue_proc_son
            ;;
            4)
                echo ">> Bạn chọn \e[96m$chon2\e[0m"
                ##
                vmware
                continue_proc_son
            ;;
            5)
                echo ">> Bạn chọn \e[96m$chon2\e[0m"
                ##
                pycharm
                continue_proc_son
            ;;
            6)
                echo ">> Bạn chọn \e[96m$chon2\e[0m"
                ##
                teamview
                continue_proc_son
            ;;
            7)
                echo ">> Bạn chọn \e[96m$chon2\e[0m"
                ##
                wine
                continue_proc_son
            ;;
            all|ALL)
                echo ">> Bạn chọn \e[96m$chon2\e[0m"
                ##
                continue_proc_son
            ;;
            ql|q|QL|Q)
                echo ">> Bạn chọn \e[96m$chon2\e[0m"
                ./Update.sh
            ;;
            end|END)
                echo ">> Bạn chọn \e[96m$chon2\e[0m"
                echo "\e[07m>>Kết Thúc chương trình<<\e[0m"
                exit $?
            ;;
            *)
                echo " << \e[91mBạn đã nhập sai tùy chọn, vui lòng nhập lại !!!\e[0m >> "    
        esac
    done    
}

continue_proc_son(){
    echo -n "\n Bạn có muốn tiếp tục? (Y/N): "
    read anw4
    if [ $anw4 = "y" ] || [ $anw4 = "Y" ] 
    then
        softWare
    elif [ $anw4 = "n" ] || [ $anw4 = "N" ]
    then
        exit
        else
        continue_proc_son
    fi
}
softWare