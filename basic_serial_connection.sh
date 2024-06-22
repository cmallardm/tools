#!/bin/bash

# Buscar el dispositivo
DEVICE=$(ls /dev/cu.usbserial-* 2>/dev/null)

# Verificar si se encontr el dispositivo
if [ -z "$DEVICE" ]; then
  read -p "No se encontr ningn dispositivo USB-to-Serial."
  exit 1
fi

# Establecer la conexin con el switch usando screen
echo "Conectando a $DEVICE con screen..."
screen $DEVICE 9600,cs8,-parenb,-cstopb,-hupcl

