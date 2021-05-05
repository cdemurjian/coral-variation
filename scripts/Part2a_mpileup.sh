#!/bin/bash 
#SBATCH --job-name=bcf_mpileup2
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

module load bcftools

INDIR=../align_stepwise3
# make output directory if it doesn't exist. 
OUTDIR=../variants_bcftools


# make a list of bam files
ls $INDIR/*mkdup.bam >$INDIR/list.bam

# set reference genome location
GEN=../ref_genome/GCA_014633955.1_Aten_1.0_genomic.fa

bcftools mpileup \
	-f $GEN \
	-b $INDIR/list.bam \
	-q 20 \
	-Q 30 \ > ../variants_bcftools/coral.pileup
date

