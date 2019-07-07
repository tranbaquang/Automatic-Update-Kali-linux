for i in {0..107}
do
    for j in {0..107}
    do
        echo -e "Mã 0${i};${j}m : \e[${i};${j}m101010100101010101010101010\e[0m"
    done
done