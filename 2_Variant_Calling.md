We used two variant callers, bcftools and freebayes.

bcftools was fairly easy to use. All we needed to do was create a pileup file from the list of bam files we had previously created (script2a) and then run the variant calling script (2b) to create the vcf file we needed. This vcf file could then be filtered against the freebayes VCF file to get better results
