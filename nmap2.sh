#!/bin/bash -eu

exec &> $0.OUT

time for i in {1..65536}; do 
  if </dev/tcp/localhost/$i && >/dev/tcp/localhost/$i; then
    echo $i 
  fi
done 2>/dev/null
