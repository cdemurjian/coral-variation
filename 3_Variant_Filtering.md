Variant Filering

To filter our varinat from both Freebayes and Bcftools, we used Bcftools to filter via SNP calling those areas with variation of greater than 50%, and then compiled them into a VFC file and tabulated them with tabix. We then used Vt to take a look at the number of SNPs that had variation accross our 6 samples in each file. 
Freebayes showed that number of SNP variants accross both files 6324038, of those the number of allease involved where as follows, 2 alleles : 6259816 (1.34) [3580757/2679059], 3 alleles : 63935 (0.56) [45760/82110], 4 alleles : 286 (0.46) [272/586], and no SNPs had variation at greater than 5 alleles.
Bcftools showed a total number of SNPS with variants involved with different alleles as 10253807 total SNPs with, 
           2 alleles                      :        10078950 (1.30) [5698249/4380701]
           3 alleles                      :          174434 (0.55) [124512/224356]
           4 alleles                      :             423 (0.50) [423/846]

We then compared the 2 variant files together and discorved that Freebayes had called more SNPs than Bcftools had originally, 
