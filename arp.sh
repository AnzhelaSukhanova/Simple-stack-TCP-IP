#!/bin/sh

arping -c3 -I tap0 10.0.0.2 &
./main & id=$!

wait -n
kill $id
