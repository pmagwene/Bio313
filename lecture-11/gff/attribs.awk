# attribs.awk
# parse the attributes field of a GFF file

NF >= 9 {
    # print the first 8 fields
    print $1, $2, $3, $4, $5, $6, $7, $8
  
    # break the attributes field up into individual attributes
    n = split($9, attributes, ";")
    for (i = 1; i <= n; i++){
        tstr = attributes[i]
        gsub(/%20/," ", tstr ) # spaces
        gsub(/%2C/, ",", tstr) # commas
        gsub(/%3B/, ";", tstr) # semi-colons
        gsub(/%2F/, "/", tstr) # forward slash
        print "\t\t" tstr
        }
    print "\n"
}
