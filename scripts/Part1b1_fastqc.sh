#!/bin/bash 
#SBATCH --job-name=fastqc
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 6
#SBATCH --mem=10G
#SBATCH --qos=mcbstudent
#SBATCH --partition=mcbstudent
#SBATCH --mail-user=molly.riser@uconn.edu
#SBATCH --mail-type=ALL
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err


hostname
date

# load software
module load fastqc

# create output directory
OUTDIR=../fastqc

# run fastqc. "*fq" tells it to run on all fastq files in directory "../rawdata/"
#fastqc -t 6 -o $OUTDIR ../raw_data/raw_data2/DRR110778.fastq.gz
#fastqc -t 6 -o $OUTDIR ../raw_data/raw_data2/DRR110779.fastq.gz
#fastqc -t 6 -o $OUTDIR ../raw_data/raw_data2/DRR110780.fastq.gz
#fastqc -t 6 -o $OUTDIR ../raw_data/raw_data2/DRR110781.fastq.gz
#fastqc -t 6 -o $OUTDIR ../raw_data/raw_data2/DRR110782.fastq.gz
#fastqc -t 6 -o $OUTDIR ../raw_data/raw_data2/DRR110783.fastq.gz
fastqc -t 6 -o $OUTDIR ../ref_genome/GCA_014633955.1_Aten_1.0_genomic.fa
