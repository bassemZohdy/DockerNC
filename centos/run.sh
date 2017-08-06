#!/bin/sh
while true
do
  file="/tmp/nc-message"
  out="/tmp/nc-out"
  if [ ! -f "$file" ]
  then
    n=`ip addr show eth0|grep inet|cut -d ' ' -f6`
    echo -e "HTTP/1.1 200 OK \\r\\n\\r\\n $n" >$file
  fi
  ncat -v -l 8080 <$file >$out
  if grep quit $out
  then
    break
  fi
done
