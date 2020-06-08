#!/usr/bin/echo No such file or directory: 

key="Imp0st3r_4_T34m_M4gm4"
#   ".x.xx..x..........xxx"
relic="ADIcAAVHbDAtVlQbbFQzNG1fTTRnbTQ="

assert_eq() { echo $1 $2 ;  [ "$1" != "$2" ] && exit 1; }


assert_eq `tr -dc '_' <<< "$key" | wc -c` 3
assert_eq ${#key} 21
assert_eq ${key:0:1} I
assert_eq `head -c1<<<"printf Ditto"` ${key:2:1}

M=4M_M4; assert_eq ${M/M/m} ${key:13:5}
assert_eq `printf '%x\n' "'${key:17:1}"` ${key:12:2}

echo --\> ${key:6:1}${key:9:1} - ${key:12:2} = ${key:3:1}
echo --\> 4connu - 4inconnu = ${key:3:1}

assert_eq ${key:5:1} ${relic:11:1}
assert_eq ${key:11:1} `tr '[:lower:]' '[:upper:]'<<<${key:5:1}`

# assert_eq $((`printf '%d\n' "'${key:13:1}"`-`printf '%d\n' "'${key:0:1}"`)) $((${key:14:1}*-1))
# assert_eq 34 = 4

assert_eq 0 ----end----

## calculus
# assert_eq ${key:3:1} $((${key:16:1}+${key:14:1}))

## resemblance ??
# assert_eq `head -c1<<<\`printf Ditto\`` ${key:2:1}
# assert_eq "${key:9:1}${key:19:1}" `(tail -c3 | head -c 2) <<< "abcd"`
# assert_eq `tr '3' 'e' <<< ${key:4:4}` "uper"

perl -e ' $k=$ARGV[0]; use MIME::Base64; $p=decode_base64($ARGV[1]); print $p ^ $k' $key $relic
