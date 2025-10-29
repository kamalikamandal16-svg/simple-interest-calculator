#!/usr/bin/env bash
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 PRINCIPAL RATE TIME"
  exit 1
fi
P=$1; R=$2; T=$3
SI=$(awk "BEGIN {print ($P * $R * $T)/100}")
TOTAL=$(awk "BEGIN {print $P + $SI}")
echo "Simple Interest: $SI"
echo "Total Amount: $TOTAL"
