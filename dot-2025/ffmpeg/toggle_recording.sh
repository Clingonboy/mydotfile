#!/bin/bash

# IL PERCORSO COMPLETO DELLO SCRIPT DI REGISTRAZIONE
RECORD_SCRIPT="./regvideo.sh"

# NOME UNICO DEL PROCESSO FFmpeg DA CERCARE
FFMPEG_PROCESS_NAME="ffmpeg -f pulse"

# --- LOGICA DEL TOGGLE ---

# Controlla se una registrazione FFmpeg è già in esecuzione
if pgrep -f "$FFMPEG_PROCESS_NAME" > /dev/null
then
    echo "Registrazione in corso. Interruzione..."
    # Invia il segnale SIGINT (-2), che permette a FFmpeg di finalizzare il file
    pkill -INT -f "$FFMPEG_PROCESS_NAME"

    # Notifica l'utente (opzionale)
    notify-send "Registrazione" "Registrazione interrotta. File salvato." 2>/dev/null
else
    echo "Nessuna registrazione in corso. Avvio..."

    # AVVIO CON XTERM (Ottimizzato per XFCE)
    # -e: specifica il comando da eseguire
    # -T: imposta il titolo della finestra
    # Il comando viene eseguito e il terminale rimane aperto per mostrare l'output di ffmpeg.
    # xterm -T "FFmpeg Recorder" -e "$RECORD_SCRIPT" &
    exec "$RECORD_SCRIPT" &

    # Notifica l'utente
    notify-send "Registrazione" "Registrazione AVVIATA!" 2>/dev/null
fi

exit 0
