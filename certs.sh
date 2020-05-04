#! /bin/bash

if [ "$1" = "" ]; then
    echo "Gerenating for name localhost"
    name="localhost"
else
    echo "Gerenating for name "$1
    name=$1
fi

openssl req -x509 -nodes -days 365 -subj "/C=LC/ST=Local/O=Local Host, Inc./CN="$name \
 -addext "subjectAltName=DNS:"$name -newkey rsa:2048 -keyout $name.key \
 -out $name.crt;

cp $name.key "$name"CA.pem

