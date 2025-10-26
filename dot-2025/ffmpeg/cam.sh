#!/bin/bash

# Nome del dispositivo webcam
WEBCAM_DEVICE="/dev/video0"

# Formato di input (il formato video standard per le webcam su Linux)
INPUT_FORMAT="v4l2"

# Risoluzione (puoi provare altre risoluzioni supportate dalla tua webcam, es. 1280x720)
RESOLUTION="640x480"

# Frame rate (quanti fotogrammi al secondo)
FRAMERATE="30"

# Comando per avviare la riproduzione in una finestra con ffplay
# -i "$WEBCAM_DEVICE" : Specifica il dispositivo di input
# -f "$INPUT_FORMAT" : Specifica il formato di input (Video4Linux2)
# -framerate "$FRAMERATE" : Specifica il frame rate
# -video_size "$RESOLUTION" : Specifica la risoluzione
# -window_title "Webcam Preview - FFplay" : Imposta il titolo della finestra
# -
# Il comando -nostats -hide_banner rende l'output del terminale più pulito

ffplay -f "$INPUT_FORMAT" -framerate "$FRAMERATE" -video_size "$RESOLUTION" -i "$WEBCAM_DEVICE" -window_title "Webcam Preview - FFplay" -nostats -hide_banner

# Nota: per uscire dalla finestra di ffplay, premi 'q'
