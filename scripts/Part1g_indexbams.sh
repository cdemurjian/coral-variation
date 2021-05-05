#!/bin/bash 
#SBATCH --job-name=index_bams
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --mem=5G
#SBATCH --qos=general
#SBATCH --partition=general
#SBATCH --mail-user=molly.riser@uconn.edu
#SBATCH --mail-type=ALL
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date

module load samtools

# "*mkdup.bam" will refer to each of the 
for file in ../align_stepwise3/*mkdup.bam
	do samtools index $file
done

date
