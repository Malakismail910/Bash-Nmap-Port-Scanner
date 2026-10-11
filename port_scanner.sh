#!/bin/bash

if ! command -v nmap &>/dev/null; then
    echo "Error: Nmap is not installed."
    exit 1
fi 

SCAN_DIR="scans"

mkdir -p "$SCAN_DIR"

read -p "Enter terget IP or hostname: " TARGET

if [ -z "$TARGET" ] ; then
     echo "Error: Target cannot be empty "
     exit 1
fi

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
OUTPUT_FILE="$SCAN_DIR/scan_${TARGET}_${TIMESTAMP}.txt"

echo
echo "==============================================="
echo "        NMAP PORT SCANNER"
echo "=============================================="
echo "Target : $TARGET"
echo "Output : $OUTPUT_FILE"
echo "=============================================="
echo


echo "[+]  Starting Nmap Scan..."
echo

nmap -sV -T3 "$TARGET" | tee "$OUTPUT_FILE"

echo
echo "==========================================="
echo "Scan completed."
echo "Results saved to: "
echo "$OUTPUT_FILE"
echo "=========================================="

