#!/usr/bin/echo No such file or directory: 

# pass="My_5up3r_c0mpL1c4t3d_k3y"
read pass
flag="HRYcTi1AYS0SUG8pRAh1Okl0M2RfazN5"

assert_eq() { [ "$1" != "$2" ] && exit 1; }
xdec () { perl -e ' $k=$ARGV[0]; use MIME::Base64; $p=decode_base64($ARGV[1]); print $p ^ $k' $1 $2; }

#    "My_5up3r_c0mpL1c4t3d_k3y"
# pass="........................"

assert_eq `tr -dc '_' <<< "$pass" | wc -c` 3
assert_eq ${pass:0:1} M
assert_eq ${pass:10:1} 0
assert_eq $((${pass:10:1}+${pass:22:1})) ${pass:18:1}
assert_eq ${pass:6:1} ${pass:18:1}
assert_eq ${pass:17:1} t
assert_eq ${pass:3:1} $((${pass:16:1}+${pass:14:1}))
assert_eq $((`printf '%d\n' "'${pass:13:1}"`-`printf '%d\n' "'${pass:0:1}"`)) $((${pass:14:1}*-1))
assert_eq ${pass:11:1} `echo ${pass:0:1} | tr '[:upper:]' '[:lower:]'`
assert_eq ${pass:21:1} k
assert_eq `head -c1<<<"printf XD"` ${pass:12:1}
assert_eq ${pass:15:1} ${pass:9:1}
assert_eq "${pass:9:1}${pass:19:1}" `(tail -c3 | head -c 2) <<< "abcd"`
assert_eq ${pass:1:1} ${pass:23:1}
assert_eq `tr '3' 'e' <<< ${pass:4:4}` "uper"
assert_eq ${#pass} 24

xdec $pass $flag
