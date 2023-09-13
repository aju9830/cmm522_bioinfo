#!/bin/bash
#SBATCH --job-name=mail_bash
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=1gb
#SBATCH --time=00:05:00
#SBATCH --partition=windfall
#SBATCH --account=windfall
#SBATCH --mail-type=END
#SBATCH --mail-user=sruthi9830@arizona.edu

x=1
while [ $x -le 10 ]
do
      file_title="important_results$x.txt"
      echo "Our hypothesis is right" > "$file_title"
      x=$((x+1))
done
