# Define the exact URLs you have
FASTA_URL = "https://marinegenomics.oist.jp/dicyemid/download/dicyema_japonicum_scaffold.fa.gz"
GFF_URL = "https://marinegenomics.oist.jp/dicyemid/download/dicyema_japonicum_genemodel.gff.gz"
PROT_URL = "https://marinegenomics.oist.jp/dicyemid/download/dicyema_japonicum_genemodel_prot.fa.gz"

# Define the output filenames
FASTA_OUT = dicyema_japonicum_scaffold.fa.gz
GFF_OUT = dicyema_japonicum_genemodel.gff.gz
PROT_OUT = dicyema_japonicum_genemodel_prot.fa.gz
# The default target runs when you just type 'make'
all: $(FASTA_OUT) $(GFF_OUT) $(PROT_OUT)

# Rule for downloading the FASTA file
$(FASTA_OUT):
	wget -O $@ $(FASTA_URL)

# Rule for downloading the GFF file
$(GFF_OUT):
	wget -O $@ $(GFF_URL)

# Rule for downloading the PROT file
$(PROT_OUT):
	wget -0 $@ $(PROT_URL)

# Utility target to remove the downloaded files if you need to start over
clean:
	rm -f $(FASTA_OUT) $(GFF_OUT) $(PROT_OUT)

.PHONY: all clean
