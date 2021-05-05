#!/bin/bash 
#SBATCH --job-name=align_stepwise3
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 12
#SBATCH --mem=40G
#SBATCH --qos=mcbstudent
#SBATCH --partition=mcbstudent
#SBATCH --mail-user=charles.demurjian@uconn.edu
#SBATCH --mail-type=ALL
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date

# load software
module load bwa/0.7.17
module load samtools

# set input and output directories
INDIR=../raw_data/raw_data2
OUTDIR=../align_stepwise3

mkdir -p $OUTDIR


# current location of indexed HG38
# may need to be changed. 
GEN=../ref_genome/GCA_014633955.1_Aten_1.0_genomic.fa.gz


# note that read group info is added during alignment. 


bwa mem -t 12 -R '@RG\tID:DRR110778\tSM:DRR110778' $GEN $INDIR/DRR110778.fastq -o $OUTDIR/DRR110778.sam 
date
bwa mem -t 12 -R '@RG\tID:DRR110779\tSM:DRR110779' $GEN $INDIR/DRR110779.fastq -o $OUTDIR/DRR110779.sam
date
bwa mem -t 12 -R '@RG\tID:DRR110780\tSM:DRR110780' $GEN $INDIR/DRR110780.fastq -o $OUTDIR/DRR110780.sam
date
bwa mem -t 12 -R '@RG\tID:DRR110781\tSM:DRR110781' $GEN $INDIR/DRR110781.fastq -o $OUTDIR/DRR110781.sam
date
bwa mem -t 12 -R '@RG\tID:DRR110782\tSM:DRR110782' $GEN $INDIR/DRR110782.fastq -o $OUTDIR/DRR110782.sam
date
bwa mem -t 12 -R '@RG\tID:DRR110783\tSM:DRR110783' $GEN $INDIR/DRR110783.fastq -o $OUTDIR/DRR110783.sam
date
