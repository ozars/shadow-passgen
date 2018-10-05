# shadow Password Generator

Docker-based shadow file generator from given password list.

## Requirements

- docker supporting debian-based images
- unix shell (/bin/sh)

## Example

```shell
$ echo -e "testpassword\ncorrecthorsebatterystaple" > password-file
$ ./shadowgen.sh password-file > shadow-file
$ cat shadow-file
netsec1:$6$fcK/kK5f$y5ccN4baGGDImBtK7T03S443V.3AudZpOUGP2bvyKhYDjojGj2WRaKjLd8ghz/Jg1HqI5/yH899GV0C4IzvIc0:17809:0:99999:7:::
netsec2:$6$kFGo73o0$SSl04Gh6lpJA0TsmdVFnwahYpdaWzhLjGNni3XsZDwxKuHotqKKMAZKxtfrE0NJaes6BlYYSZgouOAZq.Lhe61:17809:0:99999:7:::
```

## But why?

I needed to create a shadow file for students to crack using john the ripper. I
didn't want to do it manually or add dumb users to my OS for this purpose, so
here we are.

## Notes

Using debian:latest as base image requires ~100MB download. Feel free to submit
PR if you set it up for something simpler such as alpine.
