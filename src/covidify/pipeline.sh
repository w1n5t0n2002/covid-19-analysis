#!/bin/bash
function banner {
    echo "###"
    echo "### $1"
    echo "###"
}

ENV=$1
OUT_FDR=$2

mkdir -p $OUT_FDR

banner "Job arguments:"
echo "ENV: $ENV"
echo "OUTPUT FOLDER: $OUT_FDR"

banner "Data Extraction"
python $ENV/data_prep.py --output_folder $OUT_FDR

banner "Data Exploration"
python $ENV/data_exploration.py --output_folder $OUT_FDR

banner "Complete!"
echo "* Results in:   Desktop/reports"
