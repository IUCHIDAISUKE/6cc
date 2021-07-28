# C compiler [6cc]

This is C compiler. The name of 6cc. This means 4+2=6. :)

## setup

```shell
$docker build -t compilerbook https://www.sigbus.info/compilerbook/Dockerfile
$docker run --rm -it -v $HOME/c_compiler/6cc:/6cc compilerbook
$cd ../../6cc
```

## run

```shell
making assembly file
$make
$ ./6cc [command] > tmp.s
$cat tmp.s
$cc -o tmp tmp.s
$ ./tmp
$echo $? # check ret
123 etc..

run test
$make
$bash ./test.sh
```

### **TIPS**

If you debug shell script, add `-x` option.

```shell
$bash -x test.sh
1 => 1
123 => 123
42 => 41 expected, but got 42
user@847580c746e3:/mond$ bash -x test.sh
+ assert 1 1
+ expected=1
+ input=1
+ ./mond 1
+ cc -o tmp tmp.s
+ ./tmp
+ actual=1
+ '[' 1 = 1 ']'
+ echo '1 => 1'
1 => 1
+ assert 123 123
+ expected=123
+ input=123
+ ./mond 123
+ cc -o tmp tmp.s
+ ./tmp
+ actual=123
+ '[' 123 = 123 ']'
+ echo '123 => 123'
123 => 123
+ assert 42 42
+ expected=42
+ input=42
+ ./mond 42
+ cc -o tmp tmp.s
+ ./tmp
+ actual=42
+ '[' 42 = 42 ']'
+ echo '42 => 42'
42 => 42
+ echo OK
OK
```

## next goal

- [28:45~(youtube)](https://www.youtube.com/watch?v=8s_4_rX07Vo)
- xv6 をコンパイルできるようにする
- 最適化パスを追加する
- 浮動小数点数を足す
- disk5 に移植してみる

## material

- [Compiler Explorer](https://godbolt.org/z/RyNqgE)