#!/bin/bash
#SBATCH --job-name=blastsearch
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --mem=8G
#SBATCH --qos=mcbstudent
#SBATCH --partition=mcbstudent
#SBATCH --mail-user=molly.riser@uconn.edu
#SBATCH --mail-type=ALL
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date

module load bcftools/1.6
module load blast/2.7.1

OUTDIR=../blast_search_A.Tenuis
mkdir -p $OUTDIR

blastn –db nt –query ../filtered_vcfs/*.vcf.gz –out results.out -remote 

date
