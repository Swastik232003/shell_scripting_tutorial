function is_loyal(){
    read -p " jetha ne mud ke kise dekha : "  bandi
    read -p  "jetha ka pyaar :" pyaar
    if [[ $bandi == "daya bhabhi" ]];
    then
    echo "jetha is loyal"
    elif [[ $pyaar -ge 100 ]];
    then
    echo "jetha is loyal"
    else
    echo "jetha is not loyal"
    fi

}
#this is a function calling 
is_loyal
