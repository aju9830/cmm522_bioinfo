#!/bin/bash
#SBATCH --job-name=loop_bash
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=1gb
#SBATCH --time=00:05:00
#SBATCH --partition=windfall
#SBATCH --account=windfall

x=1
while [ $x -le 10 ]
do
  file="important_results$x.txt"
  echo "Our hypothesis is right" > "$file"
  x=$((x+1))
done