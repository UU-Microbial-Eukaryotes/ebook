#!/bin/bash

rm _data/figs.yml
count=1
for fig in `ls assets/images/*.png | sort -V`;do
  bn=`basename $fig .png`
  echo "$bn:" >> _data/figs.yml
  echo "  name: $bn" >> _data/figs.yml
  echo "  url: /$fig" >> _data/figs.yml
  echo "  number: $count" >> _data/figs.yml
 count=$((count+1))
done
