#!/bin/bash

###Loop through site files
sites=(site-*)

printf '%s\n' "${sites[@]}"

for i in "${sites[@]}"
do

echo "Clear old customforwards-$i"
truncate -s0 ./customforwards-$i

###Loop through hosts

while IFS="" read -r host || [ -n "$host" ]
do
  printf '    name:%s\n' "$host"
  echo "forward-zone:" >> ./customforwards-$i
  printf '    name: "%s"\n' "$host" >> ./customforwards-$i
  echo "    forward-first: yes" >> ./customforwards-$i
  cat ./$i >> ./customforwards-$i
done < ./hosts

  cat ./$i

done
