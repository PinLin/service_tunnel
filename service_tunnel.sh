#!/bin/bash

while true; do
    # CHIP SSH
    ssh -o "ExitOnForwardFailure yes" -NR 20023:localhost:22 pinlin@ntut.com.tw
done &

while true; do
    sleep 10s
done