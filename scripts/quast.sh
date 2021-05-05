#!/bin/bash
#SBATCH --job-name=quast
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 8
#SBATCH --mem=10G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=charles.demurjian@uconn.edu
#SBATCH -o %x_%A.out
#SBATCH -e %x_%A.err

hostname
date

##########################################################
##		Quality Assesment: QUAST		##
##########################################################
# MaSuRCA
module load quast/5.0.2

quast.py ../ref_genome/GCA_014633955.1_Aten_1.0_genomic.fa \
	--threads 8 \
	-o quast

module unload quast/5.0.2
