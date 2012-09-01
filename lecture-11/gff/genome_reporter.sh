#!/bin/bash

URL='http://downloads.yeastgenome.org/curation/chromosomal_feature/saccharomyces_cerevisiae.gff'
BASEFILE='saccharomyces_cerevisiae.gff'

# get today's date
TODAY=$(date -u +%Y-%m-%d)

# create filename, prepended w/today's date
FILENAME="$TODAY-$BASEFILE"
REPORT="report-$FILENAME"

# if the GFF file does not already exist then
# use curl to download the file and save if with the name above
if [ ! -e $FILENAME ]
then
    curl -o $FILENAME $URL
fi


# create report with a series of awk calls
echo -e "Genome Report\nPrepared: $TODAY\n" > $REPORT

echo "Total genes: " >> $REPORT
awk '$3 == "gene" {print $0}' $FILENAME | wc -l >> $REPORT

echo -e "\nDubious ORFs: " >> $REPORT
awk '$3 == "gene" && ($5 - $4) < 300 && match($9, "Dubious") {print $0 }' $FILENAME | wc -l >> $REPORT

echo -e "\nPseudogenes: " >> $REPORT
awk -f fcount.awk  -v ftype="pseudogene" $FILENAME | wc -l >> $REPORT

echo -e "\nChromosome, length, genes per chromosome: " >> $REPORT
awk -f fcount.awk $FILENAME | sort >> $REPORT 