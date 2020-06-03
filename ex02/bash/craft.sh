#!/usr/bin/bash

pass="My_5up3r_c0mpL1c4t3d_k3y"
flag='PoC{X0R_M3_D4DDY}'

xenc () {
    perl -e '$p=$ARGV[0]; $k=$ARGV[1]; use MIME::Base64; print encode_base64($p ^ $k)' $1 $2
}

xdec () {
    perl -e ' $k=$ARGV[0]; use MIME::Base64; $p=decode_base64($ARGV[1]); print $p ^ $k' $1 $2
}

xdec $pass `xenc $pass $flag`
echo -e "\n"`xenc $pass $flag`
