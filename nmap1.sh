#!/bin/bash -eu

exec &> $0.OUT

time for ((i=1; i<65535; i++))
do 
  ( echo > /dev/tcp/localhost/$i ) 2>/dev/null && echo $i
done
