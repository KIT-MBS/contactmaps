#!/bin/bash

pathname=Validation_Set/MSA/
filename=effective_validation_set.csv
echo "MSA,Meff" > $filename

for msa in $(ls ${pathname}Trimmed_*.fa)
do
    echo "$(basename $msa .fa),$(../../../../Programs/sequeff/build/sequeff -u -f $msa)" >> $filename
done
