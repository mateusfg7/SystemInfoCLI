#!/bin/bash


ROOT=$(id -u)
USER=$(whoami)

#CORES

VERMELHO(){
	echo -e "\033[00;31m"
}
VERMELHOCLARO(){
	echo -e "\033[01;31m"
}
VERMELHOREVERSO(){
	echo -e "\033[07;31m"
}
CORZERO(){
	echo -e "\033[00;00;00m"
}
AZUL(){
	echo -e "\033[00;34m"
}


info(){
    echo
    echo
    echo "data:"
    echo
    
    date
    sleep 0.5
    
    echo
    echo "Usuários:"
    echo
    
    users
    sleep 0.5
    
    echo
    echo
    echo "Informação do kernel:"
    echo
    
    cat /proc/version
    sleep 0.5
    
    echo
    echo
    echo "Informaõs de armazenamento:"
    echo
    
    free
    sleep 0.5
    
    echo
    echo
    echo "Infoemações da CPU:"
    
    cat /proc/cpuinfo
    sleep 0.5
    
    echo
    echo
    echo "informações de dispositivos USB conectados:"
    echo
    
    lsusb
    sleep 0.5
    
    echo
    echo
    echo "Informação sobre partições:"
    echo
    
    df -h
    sleep 0.5
    
    echo
    echo
    echo "Infoemações sobre dispositivos PCI:"
    echo
    
    lspci
    sleep 0.5
    
    echo
    echo
}


infoprint(){
    echo
    VERMELHOCLARO
    VERMELHOREVERSO
    echo "data:"
    CORZERO
    VERMELHO
    
    date
    
    sleep 0.5
    echo
    VERMELHOCLARO
    VERMELHOREVERSO
    echo "Usuários:"
    CORZERO
    VERMELHO
    
    users
    
    sleep 0.5
    echo
    VERMELHOCLARO
    VERMELHOREVERSO
    echo "Informações do kernel:"
    CORZERO
    VERMELHO
    
    cat /proc/version
    
    sleep 0.5
    echo
    VERMELHOCLARO
    VERMELHOREVERSO
    echo "Informações de armazenamento:"
    CORZERO
    VERMELHO
    
    free
    
    sleep 0.5
    echo
    VERMELHOCLARO
    VERMELHOREVERSO
    echo "Informações da CPU:"
    CORZERO
    VERMELHO
    
    cat /proc/cpuinfo
    
    sleep 0.5
    echo
    VERMELHOCLARO
    VERMELHOREVERSO
    echo "informações de dispositivos USB conectados:"
    CORZERO
    VERMELHO
    
    lsusb
    
    sleep 0.5
    echo
    VERMELHOCLARO
    VERMELHOREVERSO
    echo "Informações sobre partições:"
    CORZERO
    VERMELHO
    
    df -h
    
    sleep 0.5
    echo
    CORZERO
    VERMELHOCLARO
    VERMELHOREVERSO
    echo "Informações sobre dispositivos PCI"
    VERMELHO
    
    lspci
    
    sleep 0.5
    echo
    CORZERO
}



root(){
    clear
    VERMELHO


    figlet ""
    sleep 0.3
    clear

    echo
    figlet "I"
    sleep 0.3
    clear

    echo
    figlet "IN"
    sleep 0.3
    clear

    echo
    figlet "INF"
    sleep 0.3
    clear
    clear
    clear
    echo
    clear

    echo
    figlet "INFO"
    sleep 0.3
    echo -e "\033[01;34m@\033[01;30mArk-\033[00;00;00m\033[07;31mc3"

    CORZERO
    echo
    echo
    VERMELHOCLARO
    cal


    infoprint

    echo
    AZUL

    read -p "Deseja salvar esses dados em um arquivo de texto?[s/n]  " what

    if [ $what = "s" ];then
        read -p "Qual sera o nome do arquivo?  " name
        echo
        info >> /root/$name
        echo
        sleep 1
        echo "arquivo salvo com sucesso em /root ;)"
        echo
        echo
        sleep 3
    fi
}

user(){
    clear
    VERMELHO


    figlet ""
    sleep 0.3
    clear

    echo
    figlet "I"
    sleep 0.3
    clear

    echo
    figlet "IN"
    sleep 0.3
    clear

    echo
    figlet "INF"
    sleep 0.3
    clear
    clear
    clear
    echo
    clear

    echo
    figlet "INFO"
    sleep 0.3
    echo -e "\033[01;34m@\033[01;30mArk-\033[00;00;00m\033[07;31mc3"

    CORZERO
    echo
    echo
    VERMELHOCLARO
    cal


    infoprint

    echo
    AZUL


    read -p "Deseja salvar esses dados em um arquivo de texto?[s/n]  " what

    if [ $what = "s" ];then
        read -p "Qual sera o nome do arquivo?  " name
        echo
        info >> /home/$USER/$name
        echo
        sleep 1
        echo "arquivo salvo com sucesso em /home/$USER ;)"
        echo
        echo
        sleep 3
    fi
}



if [ $ROOT = 0 ];then
	root
  else
	user
fi

echo
echo
read -p "Aperte ENTER para sair..."
clear
exit