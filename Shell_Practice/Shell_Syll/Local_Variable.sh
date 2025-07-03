#!/bin/bash

function print() {
    local name=$1
    echo "Name is $name"
}

name="Tom"
echo "The name is $name : Before"

print Max
echo "The name is $name : After"

#*************************************************

function print() {
    name=$1
    echo "Name is $name"
}

print Max
echo "The name is $name"