#!/bin/bash 
#SBATCH --job-name=bcf_tabix
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --mem=5G
#SBATCH --qos=general
#SBATCH --partition=general
#SBATCH --mail-user=charles.demurjian@uconn.edu
#SBATCH --mail-type=ALL
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date

module load htslib

# set input directory
INDIR=../variants_bcftools

tabix -p vcf $INDIR/coral.vcf.gz

date