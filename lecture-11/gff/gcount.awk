# gcount.awk
# length of each chromosome
$3 == "chromosome" {
    clen[$1] = $5
}

# increment the gene count for the given chromosome
$3 == "gene" {
    ngenes[$1] += 1
}

# once we've processed all the records
END {
for (chr in clen) {
    print chr "\t" clen[chr] "\t" ngenes[chr]
    }
}