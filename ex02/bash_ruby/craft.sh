#!/usr/bin/echo No such file or directory: 

pass="elloico"
flag='PoC{X0R_M3_D4DDY}'

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

echo `x $flag $pass`
