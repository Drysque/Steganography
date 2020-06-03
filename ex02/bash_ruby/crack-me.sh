#!/usr/bin/echo No such file or directory: 

pass="My_5up3r_c0mpL1c4t3d_k3y"
flag="HRYcTi1AYS0SUG8pRAh1Okl0M2RfazN5"

xdec () {
    perl -e ' $k=$ARGV[0]; use MIME::Base64; $p=decode_base64($ARGV[1]); print $p ^ $k' $1 $2
}

xdec $pass $flag
