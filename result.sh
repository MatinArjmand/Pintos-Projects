#!/bin/bash
# measure_performance.sh

echo "Performance Measurement"
echo "======================"

echo -e "\n1. Process-based Implementation:"
/usr/bin/time -v ./process_program 2>&1 | grep -E "Elapsed|Maximum resident"

echo -e "\n2. Thread-based Implementation:"
/usr/bin/time -v ./thread_program 2>&1 | grep -E "Elapsed|Maximum resident"