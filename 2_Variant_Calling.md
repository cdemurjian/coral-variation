We used two variant callers, bcftools and freebayes.

bcftools was fairly easy to use. All we needed to do was create a pileup file from the list of bam files we had previously created (script [2a](https://github.com/cdemurjian/coral-variation/blob/main/scripts/Part2a_mpileup.sh)) and then run the variant calling script ([2b](https://github.com/cdemurjian/coral-variation/blob/main/scripts/Part2b_variantcall.sh)) to create the vcf file we needed. This vcf file could then be filtered against the freebayes VCF file to get better results. We also ran script [2c](https://github.com/cdemurjian/coral-variation/blob/main/scripts/Part2c_tabix.sh) to index the vcf file we had just created. 

**Freebayes**
Freebayes is a SNP caller and we ran it on the files that we had, unfortunately Freebayes cannot read the same sam/bam files as the bcftools so we had to do a piped alignement and that ran without any issues. 
