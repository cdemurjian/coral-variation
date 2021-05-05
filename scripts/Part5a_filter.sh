#!/bin/bash
#SBATCH --job-name=filter_vcfs
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --mem=50G
#SBATCH --qos=mcbstudent
#SBATCH --partition=mcbstudent
#SBATCH --mail-user=molly.riser@uconn.edu
#SBATCH --mail-type=ALL
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date

module load bcftools/1.6
module load htslib

OUTDIR=../filtered_vcfs
mkdir -p $OUTDIR

bcftools view ../variants_bcftools/coral.vcf.gz | bcftools filter -s LowQual -e '%QUAL<50' | bgzip -c > $OUTDIR/bcf_filter.vcf.gz
bcftools view ../variants_freebayes/coral_fb.vcf.gz | bcftools filter -s LowQual -e '%QUAL<50' | bgzip -c > $OUTDIR/fb_filter.vcf.gz

for file in $OUTDIR/*vcf.gz
do tabix -f -p vcf $file
done



