# C compiler [CC]

## setup

```shell
$ docker run --rm -it -v $HOME/c_compiler/mond:/mond compilerbook
$ cd ../../mond
```

## run

```shell
$ cc -o mond mond.c
$ ./mond [command] > tmp.s
$ cat tmp.s
$ cc -o tmp tmp.s
$ ./tmp
$ echo $? [check ret]
123 etc..
```

## next goal

- [28:45~(youtube)](https://www.youtube.com/watch?v=8s_4_rX07Vo)
- xv6 をコンパイルできるようにする
- 最適化パスを追加する
- 浮動小数点数を足す
- disk5 に移植してみる
