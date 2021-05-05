#!/bin/bash 
#SBATCH --job-name=compress
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 2
#SBATCH --mem=10G
#SBATCH --qos=mcbstudent
#SBATCH --partition=mcbstudent
#SBATCH --mail-user=charles.demurjian@uconn.edu
#SBATCH --mail-type=ALL
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date

# load software
module load samtools

# set directory for input and output files
DIR=../align_stepwise3

samtools view -bhS $DIR/DRR110778.sam >$DIR/DRR110778.bam

samtools view -bhS $DIR/DRR110779.sam >$DIR/DRR110779.bam

samtools view -bhS $DIR/DRR110780.sam >$DIR/DRR110780.bam

samtools view -bhS $DIR/DRR110781.sam >$DIR/DRR110781.bam

samtools view -bhS $DIR/DRR110782.sam >$DIR/DRR110782.bam

samtools view -bhS $DIR/DRR110783.sam >$DIR/DRR110783.bam

date
