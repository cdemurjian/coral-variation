# coral-variation
Genetic variation 6 Acropora tenuis larvae from the Bioproject [PRJDB6484](https://www.ncbi.nlm.nih.gov/bioproject/PRJDB6484). Following the [CBC-Uconn variant calling](https://github.com/CBC-UCONN/Variant-Calling#variant-discovery-tutorials) tutorial

__Structure:__

1. [Pre-processing](https://github.com/cdemurjian/coral-variation/blob/main/1_Pre_processing.md)
2. [Variant Calling with bcftools and Freebayes](https://github.com/cdemurjian/coral-variation/blob/main/2_Variant_Calling)
4. [Filtering and comparing variants](https://github.com/cdemurjian/coral-variation/blob/main/3_Variant_Filtering.md)
5. [Variant Annotation](https://github.com/cdemurjian/coral-variation/blob/main/4_Variant_Annotation.md)

__Data:__

We are downloading and using the 6 Acropora tenuis larvae genotypes from the Bioproject mentioned above, [PRJDB6484](https://www.ncbi.nlm.nih.gov/bioproject/PRJDB6484). We will also be using the [Aten_1.0](https://www.ncbi.nlm.nih.gov/assembly/GCA_014633955.1/) reference genome. 

__Required software:__

Quality control: FASTQC, sickle

Alignment: bwa, samtools, picard, samblaster, bamtools, igv

Variant Calling: bcftools, freebayes

Other: bedtools, tabix, bgzip
