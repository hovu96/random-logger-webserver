#!/bin/sh
while [ 1 ]
do
   WAIT=$(shuf -i $1-$2 -n 1)
   sleep $(echo "scale=4; $WAIT/1000" | bc)
   I=$(shuf -i 1-4 -n 1)
   D=`date -Iseconds`
   case "$I" in
      "1") echo "$D GET /index.html HTTP/1.0 200 2326"
      ;;
      "2") echo "$D GET /shop.html HTTP/1.0 200 6842"
      ;;
      "3") echo "$D POST /checkout HTTP/1.0 200 50"
      ;;
      "4") echo "$D GET /products/car.html HTTP/1.0 404 2326"
      ;;
   esac
done
