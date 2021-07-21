#!/bin/bash
assert(){
    expected="$1"
    input="$2"

    ./mond "$input" > tmp.s
    cc -o tmp tmp.s
    ./tmp
    actual="$?"

    if [ "$actual" = "$expected" ]; then
        echo "$input => $actual"
    else
        echo "$input => $expected expected, but got $actual"
        exit 1
    fi
}

assert 1 1
assert 123 123
assert 42 42

echo OK
