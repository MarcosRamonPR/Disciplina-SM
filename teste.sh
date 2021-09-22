#!/bin/bash

#Lendo dado do usuário
input=$(zenity --title="Input?" --text "Digite a forma de Input" --entry --width="1000" height="1000")
codec=$(zenity --title="Codec?" --text "Qual o seu Codec" --entry --width="1000" height="1000")
ip=$(zenity --title="IP?" --text "Digite o IP" --entry --width="1000" height="1000")
porta=$(zenity --title="Porta" --text "Digite a Porta" --entry --width="1000" height="1000")

# Montando o comando --- PCH, libmp3lame, 127.0.0.1, 8020
comando="ffmpeg -vn -f alsa -i sysdefault:CARD=$input -ac 2 -acodec $codec -b:a 128k -f rtp rtp://$ip:$porta"

#Verificação das entradas
if [ "$input" = "" ]; then
    zenity --info --text "Erro. Não pode input vazio" --width="1000" height="1000"
else
    if [ "$ip" = "" ]; then
    zenity --info --text "Erro. Não pode ip vazio" --width="1000" height="1000"
    fi
fi

# Executando
$comando













































































