#!/bin/bash
# --------------------------------------------------------
# Script Name: simple-interest.sh
# Description: This script calculates simple interest
# Author: Kamalika Mandal
# License: Apache 2.0
# --------------------------------------------------------

# Formula: Simple Interest (SI) = (Principal * Rate * Time) / 100

echo "------------------------------------------"
echo "      Simple Interest Calculator"
echo "------------------------------------------"

# Read input values
read -p "Enter the Principal amount: " principal
read -p "Enter the Rate of Interest (% per year): " rate
read -p "Enter the Time (in years): " time

# Validate input
if [[ -z "$principal" || -z "$rate" || -z "$time" ]]; then
    echo "Error: All fields are required!"
    exit 1
fi

# Calculate Simple Interest
si=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display result
echo "------------------------------------------"
echo "Principal Amount  : ₹$principal"
echo "Rate of Interest  : $rate%"
echo "Time Period       : $time years"
echo "------------------------------------------"
echo "Simple Interest   : ₹$si"
echo "------------------------------------------"
