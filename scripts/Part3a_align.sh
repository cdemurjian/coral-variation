#!/bin/bash 
#SBATCH --job-name=align_pipe
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 10
#SBATCH --mem=20G
#SBATCH --qos=general
#SBATCH --partition=general
#SBATCH --mail-user=molly.riser@uconn.edu
#SBATCH --mail-type=ALL
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date

# load required software
module load samtools
module load samblaster
module load bwa/0.7.17

# raw data directory
INDIR=../raw_data/raw_data2

# specify and create output directory
OUTDIR=../align_pipe
mkdir -p $OUTDIR

# set a variable 'GEN' that gives the location and base name of the reference genome:
GEN=../ref_genome/GCA_014633955.1_Aten_1.0_genomic.fa.gz

# execute the pipe for the son:
bwa mem -t 7 -R '@RG\tID:DRR110778\tSM:DRR110778' $GEN $INDIR/DRR110778.fastq | samblaster | samtools view -S -h -u - | samtools sort -T /scratch/$USER - >$OUTDIR/DRR110778.bam
date

bwa mem -t 7 -R '@RG\tID:DRR110779\tSM:DRR110779' $GEN $INDIR/DRR110779.fastq | samblaster | samtools view -S -h -u - | samtools sort -T /scratch/$USER - >$OUTDIR/DRR110779.bam
date

bwa mem -t 7 -R '@RG\tID:DRR110780\tSM:DRR110780' $GEN $INDIR/DRR110780.fastq | samblaster | samtools view -S -h -u - | samtools sort -T /scratch/$USER - >$OUTDIR/DRR110780.bam
date

bwa mem -t 7 -R '@RG\tID:DRR110781\tSM:DRR110781' $GEN $INDIR/DRR110781.fastq | samblaster | samtools view -S -h -u - | samtools sort -T /scratch/$USER - >$OUTDIR/DRR110781.bam
date

bwa mem -t 7 -R '@RG\tID:DRR110782\tSM:DRR110782' $GEN $INDIR/DRR110782.fastq | samblaster | samtools view -S -h -u - | samtools sort -T /scratch/$USER - >$OUTDIR/DRR110782.bam
date

bwa mem -t 7 -R '@RG\tID:DRR110783\tSM:DRR110783' $GEN $INDIR/DRR110783.fastq | samblaster | samtools view -S -h -u - | samtools sort -T /scratch/$USER - >$OUTDIR/DRR110783.bam
date
