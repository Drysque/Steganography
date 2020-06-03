#!/usr/bin/echo No such file or directory: 

pass="elloico"
flag=`echo 0x35 0x03 0x2f 0x14 0x31 0x53 0x3d 0x3a 0x21 0x5f 0x30 0x2d 0x57 0x2b 0x21 0x35 0x11 | xxd -r`

x () {
    local data=$1 key=$2
    local _data _key ndata nkey count i _res
    _data=($(eval printf "'%d '" $(printf "%s" "$data" | sed -e '$!N;${s/./"'"'"'&" /g;s/""/\\&/g}')))
    _key=($(eval printf "'%d '" $(printf "%s" "$key" | sed '$!N;${s/./"'"'"'&" /g;s/""/\\&/g}')))
    ndata=${#_data[@]} nkey=${#_key[@]}
    (( count = ndata < nkey ? nkey : ndata ))
    for ((i = 0; i < count; i++)); do
        (( _res[i] = ${_data[i]:-0} ^ ${_key[i%nkey]:-0} ))
    done
    printf '0x%02x ' "${_res[@]}"
}

x $flag $pass | xxd -r
