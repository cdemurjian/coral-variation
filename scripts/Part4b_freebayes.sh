#!/bin/bash 
#SBATCH --job-name=freebayes
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 7
#SBATCH --mem=10G
#SBATCH --qos=general
#SBATCH --partition=general
#SBATCH --mail-user=molly.riser@uconn.edu
#SBATCH --mail-type=ALL
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err



hostname
date

# load required software

module load bedtools
module load bamtools
module load htslib
module load freebayes


# make a directory for results if it doesn't exist
OUTDIR=../variants_freebayes
mkdir -p $OUTDIR 

# make a list of bam files
find ../align_pipe/ -name "*bam" >$OUTDIR/bam.list

# set a variable for the reference genome location
GEN=../ref_genome/GCA_014633955.1_Aten_1.0_genomic.fa


# call freebayes
	# coverage limits defined by looking at the distribution of per base coverage

freebayes \
-f $GEN \
--bam-list $OUTDIR/bam.list \
-m 30 \
-q 20 | \
bgzip -c >$OUTDIR/coral_fb.vcf.gz


# a more complicated but flexible approach to filtering out reads
	# use bamtools to merge all reads into a single stream, filter on quality, then
	# use bedtools to exclude reads overlapping outlier windows defined previously. 
# bamtools merge -list $OUTDIR/bam.list -region chr20:29400000..34400000 | \
# bamtools filter -in stdin -mapQuality ">30" -isProperPair true | \
# bedtools intersect -v -a stdin -b $OUTLIERWINDOWS -nonamecheck | \
# freebayes -f $GEN --stdin | \
# bgzip -c >$OUTDIR/chinesetrio_fb.vcf.gz

tabix -p vcf $OUTDIR/coral_fb.vcf.gz

date
