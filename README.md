# coral-variation

__Overview and Motivation:__

Genetic variation 6 Acropora tenuis larvae from the Bioproject [PRJDB6484](https://www.ncbi.nlm.nih.gov/bioproject/PRJDB6484). Following the [CBC-Uconn variant calling](https://github.com/CBC-UCONN/Variant-Calling#variant-discovery-tutorials) tutorial. The motivation of this project is to attempt to understand genetic components of the Acropora tenuis genome. Genetic variation studies can identify highly conserved genes or genes with high amounts of variation. It can also identify structural variation such as single nucleotide polymorphisms, inversions, insertions, duplications, deletions, copy number variations, and more. Hopefully by understanding the genetic variation of this coral, we can understand and explain some more biological functions of the coral.

__Structure:__

1. [Pre-processing](https://github.com/cdemurjian/coral-variation/blob/main/1_Pre_processing.md)
2. [Variant Calling with bcftools and Freebayes](https://github.com/cdemurjian/coral-variation/blob/main/2_Variant_Calling)
4. [Filtering and comparing variants](https://github.com/cdemurjian/coral-variation/blob/main/3_Variant_Filtering.md)
5. [Variant Annotation](https://github.com/cdemurjian/coral-variation/blob/main/4_Variant_Annotation.md)

__Data:__

We are downloading and using the 6 Acropora tenuis larvae genotypes from the Bioproject mentioned above, [PRJDB6484](https://www.ncbi.nlm.nih.gov/bioproject/PRJDB6484). We will also be using the [Aten_1.0](https://www.ncbi.nlm.nih.gov/assembly/GCA_014633955.1/) reference genome. 

Our final variant called vcf files exist at /home/FCAM/EEB5300/usr6/DATA . This folder contains 3 subfolders; one for bcftools, one for freebayes, and one for the filtered dataset. Our working directory (with all error logs, raw data, sam and bam files, and everything inbetween) exists at /home/FCAM/EEB5300/usr6/Variant-Calling. The scripts used in our project were uploaded to the [scripts](https://github.com/cdemurjian/coral-variation/tree/main/scripts) folder as linked here.

__Initial Questions:__


__Discussion:__


__Required software:__

- Quality control: FASTQC, sickle
- Alignment: bwa, samtools, picard, samblaster, bamtools, igv
- Variant Calling: bcftools, freebayes
- Other: bedtools, tabix, bgzip

__Related Work/Citations:__
- https://www.ncbi.nlm.nih.gov/bioproject/PRJDB6484 
- https://www.ncbi.nlm.nih.gov/assembly/GCA_014633955.1/ 
- https://ftp.ncbi.nih.gov/genomes/all/GCA/014/633/955/GCA_014633955.1_Aten_1.0/
- https://github.com/CBC-UCONN/Variant-Calling 
- https://www.biorxiv.org/content/10.1101/2020.08.28.272823v1.full
- https://academic.oup.com/g3journal/article/11/2/jkab018/6114454
- http://www.coralsoftheworld.org/species_factsheets/species_factsheet_summary/acropora-tenuis/
- https://reefbuilders.com/2021/01/09/the-bali-aquarium-armageddon-tenuis-is-just-mind-blowing/
- https://oceanservice.noaa.gov/education/tutorial_corals/coral07_importance.html
- https://marinegenomics.oist.jp/aten/viewer/download?project_id=97
