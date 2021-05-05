#!/bin/bash
#SBATCH --job-name=compare_vcfs
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

module load vt/0.57721
module load bcftools/1.6
module load htslib
module load vcflib

cd ../filtered_vcfs

##############################
# check out filtering results:
##############################

# use VT peek
vt peek -f PASS fb_filter.vcf.gz
vt peek -f PASS bcf_filter.vcf.gz


##############################
# compare variant sets
##############################
# for two sets: VT partition

vt partition -f PASS fb_filter.vcf.gz bcf_filter.vcf.gz


# concordance is low because many complex variants and small haplotypes are represented differently
	#  bcftools norm and vcflib's vcfallelicprimitives can help standardize the representation

GEN=../ref_genome/GCA_014633955.1_Aten_1.0_genomic.fa

bcftools norm -f $GEN fb_filter.vcf.gz | vcfallelicprimitives | vcfstreamsort | bgzip >fb_vap.vcf.gz
bcftools norm -f $GEN bcf_filter.vcf.gz | vcfallelicprimitives | vcfstreamsort | bgzip >bcf_vap.vcf.gz

for file in *vap.vcf.gz
do tabix -f -p vcf $file
done

# repeat vt partition and multipartition

vt partition -f PASS fb_vap.vcf.gz bcf_vap.vcf.gz

# extract intersections with bcftools isec
#bcftools isec -f PASS -p isec_fb_gatk fb_vap.vcf.gz gatk_vap.vcf.gz

#bcftools view -H isec_fb_gatk/0000.vcf | head -n 10

# look at a few incongruent markers from isec_fb_gatk/0000.vcf, which contains variants called by fb but not gatk

# chr20	31577045	.	T	C
	# called by fb, bcf, but not gatk. no clue why. 
	# apparently lots of support for C alternate allele. 
	# heterozygous parent has RO:35, AO:21





