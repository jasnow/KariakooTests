if [ "X$1X" = "XX" ] ; then
    echo "$0 [ p | v ]" ; exit
else
    if [ "X$1X" == "XpX" ] ;then
        TYPEN="price"
    else # "v"
        TYPEN="vol"
    fi
fi     
egrep -v "^#" ${TYPEN}_inputs.yml |sed -e "s,],]~,g" -e "s,$, ," \
| tr -d "\012" |tr "~" "\012" > o_${TYPEN}_inputs.yml

pairwise o_${TYPEN}_inputs.yml
rm -f o_${TYPEN}_inputs.yml

