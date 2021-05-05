#!/bin/bash 
#SBATCH --job-name=validate_sams2
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

java -jar $PICARD ValidateSamFile \
      I=../align_stepwise3/DRR110778.bam \
      MODE=SUMMARY
	  
	  
date 