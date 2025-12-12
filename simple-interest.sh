#!/bin/bash
# Simple Interest Calculator: SI = (P * R * T) / 100
echo "Enter Principal (P):"
read P
echo "Enter Rate (R %):"
read R
echo "Enter Time (T years):"
read T
SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc -l)
echo "Simple Interest: $SI"
