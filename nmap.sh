#!/bin/bash -eu

exec &> $0.OUT

time nmap -p1-65535 --open localhost
