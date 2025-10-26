#!/bin/bash

# --- CONFIGURAZIONE ---

# 1. VIDEO (Schermo)
VIDEO_DRIVER="x11grab"
DISPLAY_INPUT=":0.0"
VIDEO_SIZE="1920x1200"
FRAMERATE="25"
OFFSET="0,0"

# 2. AUDIO (Microfono)
AUDIO_DRIVER="pulse"
# Nome esatto della sorgente del microfono digitale PipeWire/Pulse
AUDIO_INPUT="alsa_input.pci-0000_04_00.6.HiFi__Mic1__source"
AUDIO_BITRATE="128k"
AUDIO_CODEC="aac"

# 3. OUTPUT
OUTPUT_FILE="vid_$(date +%Y%m%d_%H%M%S).mp4"
VIDEO_CODEC="libx264"
PRESET="fast"
CRF_VALUE="20" 

# --- COMANDO FFMPEG ---

echo "---"
echo "Registrazione da schermo ($VIDEO_SIZE) e Microfono Digitale (PipeWire)."
echo "Premi 'q' in questo terminale per interrompere la registrazione."
echo "---"

# L'input audio deve essere specificato PRIMA dell'input video per evitare problemi
# di sincronizzazione, anche se in questo caso non è critico.
ffmpeg \
    -f "$AUDIO_DRIVER" -i "$AUDIO_INPUT" \
    -f "$VIDEO_DRIVER" -s "$VIDEO_SIZE" -r "$FRAMERATE" -i "$DISPLAY_INPUT"+"$OFFSET" \
    -c:v "$VIDEO_CODEC" -preset "$PRESET" -crf "$CRF_VALUE" \
    -c:a "$AUDIO_CODEC" -b:a "$AUDIO_BITRATE" -strict experimental \
    -pix_fmt yuv420p \
    "$OUTPUT_FILE"

echo "---"
echo "Registrazione completata. File salvato come $OUTPUT_FILE"
