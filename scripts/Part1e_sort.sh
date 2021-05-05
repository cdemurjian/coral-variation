#!/bin/bash 
#SBATCH --job-name=sort_bams3
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
export _JAVA_OPTIONS=-Djava.io.tmpdir=/scratch

IN=../align_stepwise3/DRR110778.bam
OUT=../align_stepwise3/DRR110778.sort.bam
java -jar $PICARD SortSam \
        INPUT=$IN \
        OUTPUT=$OUT \
        SORT_ORDER=coordinate \
        CREATE_INDEX=True

IN=../align_stepwise3/DRR110779.bam
OUT=../align_stepwise3/DRR110779.sort.bam
java -jar $PICARD SortSam \
        INPUT=$IN \
        OUTPUT=$OUT \
        SORT_ORDER=coordinate \
        CREATE_INDEX=True

IN=../align_stepwise3/DRR110780.bam
OUT=../align_stepwise3/DRR110780.sort.bam
java -jar $PICARD SortSam \
        INPUT=$IN \
        OUTPUT=$OUT \
        SORT_ORDER=coordinate \
        CREATE_INDEX=True

IN=../align_stepwise3/DRR110781.bam
OUT=../align_stepwise3/DRR110781.sort.bam
java -jar $PICARD SortSam \
        INPUT=$IN \
        OUTPUT=$OUT \
        SORT_ORDER=coordinate \
        CREATE_INDEX=True

IN=../align_stepwise3/DRR110782.bam
OUT=../align_stepwise3/DRR110782.sort.bam
java -jar $PICARD SortSam \
        INPUT=$IN \
        OUTPUT=$OUT \
        SORT_ORDER=coordinate \
        CREATE_INDEX=True

IN=../align_stepwise3/DRR110783.bam
OUT=../align_stepwise3/DRR110783.sort.bam
java -jar $PICARD SortSam \
        INPUT=$IN \
        OUTPUT=$OUT \
        SORT_ORDER=coordinate \
        CREATE_INDEX=True
date
