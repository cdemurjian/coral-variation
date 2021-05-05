#!/bin/bash 
#SBATCH --job-name=mark_dups
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --mem=40G
#SBATCH --qos=mcbstudent
#SBATCH --partition=mcbstudent
#SBATCH --mail-user=charles.demurjian@uconn.edu
#SBATCH --mail-type=ALL
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date

module load picard/2.9.2
export _JAVA_OPTIONS=-Djava.io.tmpdir=/scratch/$USER

IN=../align_stepwise3/DRR110778.sort.bam
OUT=../align_stepwise3/DRR110778.mkdup.bam

java -jar $PICARD MarkDuplicates \
        INPUT=$IN \
        OUTPUT=$OUT \
        METRICS_FILE=$IN.metrics.txt \
        ASSUME_SORT_ORDER=coordinate \
        CREATE_INDEX=True

IN=../align_stepwise3/DRR110779.sort.bam
OUT=../align_stepwise3/DRR110779.mkdup.bam

java -jar $PICARD MarkDuplicates \
        INPUT=$IN \
        OUTPUT=$OUT \
        METRICS_FILE=$IN.metrics.txt \
        ASSUME_SORT_ORDER=coordinate \
        CREATE_INDEX=True

IN=../align_stepwise3/DRR110780.sort.bam
OUT=../align_stepwise3/DRR110780.mkdup.bam

java -jar $PICARD MarkDuplicates \
        INPUT=$IN \
        OUTPUT=$OUT \
        METRICS_FILE=$IN.metrics.txt \
        ASSUME_SORT_ORDER=coordinate \
        CREATE_INDEX=True

IN=../align_stepwise3/DRR110781.sort.bam
OUT=../align_stepwise3/DRR110781.mkdup.bam

java -jar $PICARD MarkDuplicates \
        INPUT=$IN \
        OUTPUT=$OUT \
        METRICS_FILE=$IN.metrics.txt \
        ASSUME_SORT_ORDER=coordinate \
        CREATE_INDEX=True


IN=../align_stepwise3/DRR110782.sort.bam
OUT=../align_stepwise3/DRR110782.mkdup.bam

java -jar $PICARD MarkDuplicates \
        INPUT=$IN \
        OUTPUT=$OUT \
        METRICS_FILE=$IN.metrics.txt \
        ASSUME_SORT_ORDER=coordinate \
        CREATE_INDEX=True

IN=../align_stepwise3/DRR110783.sort.bam
OUT=../align_stepwise3/DRR110783.mkdup.bam

java -jar $PICARD MarkDuplicates \
        INPUT=$IN \
        OUTPUT=$OUT \
        METRICS_FILE=$IN.metrics.txt \
        ASSUME_SORT_ORDER=coordinate \
        CREATE_INDEX=True

date
