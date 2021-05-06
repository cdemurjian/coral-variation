Pre-processing consists of many steps used to get the data ready for variant calling. First, we need to prepare a refernce genome to align to. We also need to download our data of choice. We did not need to trim our data as it was already trimmed and passed quality checks. Next we needed to align and compress the genome and respectively create sam and bam files. After that we would need to mark duplicates, and then finally index the bam files. 

All of these steps relate to the scripts labeled Part1. After completing these steps, we can move forward and start variant calling.

We ran into some stepwise alignment issues with our script and file naming. This was incorrectly creating the sam and bam files. To check if you sam files (and therefore bam files) are being created correctly, samtools nicely has validate_sams and a bunch of other functions to do so. The validate_sams script helped us figure out our problem when we didn't know why the indexing on the bam files was not working.
