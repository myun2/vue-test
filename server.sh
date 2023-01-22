#!/bin/sh
echo <<EOS sed 's/\r/\r\n/g' | nc -l 4000 -w 1
HTTP/1.0 200 OK
Host: localhost:4000
Content-Type: application/json
Content-Length: 59

{ message: 'Vue Test', items: ["item1", "item2", "item3"] }
EOS
