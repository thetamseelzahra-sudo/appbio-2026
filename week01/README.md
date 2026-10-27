Organism name: Dicyema japonicum
Genome Size: 67.5Mb
Number of Chromosomes: The current standard reference genome submitted in OIST remains at a level (3) scaffold. The repetitive sequences are some of the major obstacles in obtaining a chromosome-level assembly.
Annotations in the Annotation File: 134927
How complete the genomic build is:　After an attempt to run the BUSCO analysis, my findings indicate similar results to the published data giving a BUSCO score of 31.9%, which is close to the 38% appearing in data. 

Commands for the Makefile:
  This will only include the command for the Makefile, the commands that the Makefile executes are within the Makefile itself. 

  nano Makefile


Updating the instructions. 
Renamed the previous Makefile to Makefile.old so it does not get overwritten.
Changed the terminal directory to appbio-2026. 
Moved the files to the right repository, removed the copies. 
In the Makefile are the URLs used for downloading the genomic fasta and gff files for dicyema japonicum. 
To ensure reproducibility and comply with GitHub's file size limits, the heavy `.gz` files are not stored in this repository. Instead, data acquisition is automated.
After making the changes, (I used Nano for creating and editing the Makefile), git was initialized and the changes were committed and pushed to git.
The Makefile was updated to also include the URL and command to download protein data. 
