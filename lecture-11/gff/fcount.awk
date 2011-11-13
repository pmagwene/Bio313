# fcount.awk
BEGIN {
# if var ftype has NOT been defined, assign it a default value
if (!ftype)
  ftype = "gene"
}

# length of each chromosome
$3 == "chromosome" {
    clen[$1] = $5
}

# increment the feature count for the given chromosome
$3 == ftype {
    ngenes[$1] += 1
}

END {
for (chr in clen) {
    print chr "\t" clen[chr] "\t" ngenes[chr]
    }
}