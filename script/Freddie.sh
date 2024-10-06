    1  $ mkdir TeamBio
    2  mkdir TeamBio
    3  mkdir biocomputing && cd biocomputing
    4  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna 
    5  https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
    6  ls
    7  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
    8  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk 
    9  $ mkdir TeamBio
   10  mkdir TeamBio
   11  cd TeamBio
   12  cd biocomputing
   13  mkdir biocomputing && cd biocomputing
   14  $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk 
   15  $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
   16  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk 
   17  ls
   18  mv wildtype.fna ../TeamBio/
   19  mv wildtype.fna ../TeamBio
   20  rm wildtype.gbk
   21  ls
   22  grep -i 'tatatata' ../TeamBio/wildtype.fna
   23  grep 'tatatata' ../TeamBio/wildtype.fna
   24  grep -i 'tatatata' ../TeamBio> wildtype.fna
   25  grep -i "tatatata" ../TeamBio/biocomputing/wildtype.fna
   26  mkdir Team
   27  mkdir biocomputing && cd biocomputing
   28  rm TeamBio
   29  rm TEAMBIO
   30  rmdir TeamBio
   31  ls TeamBio
   32  mkdir TeamBio
   33  mkdir biocomputing && cd biocomputing
   34  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk 
   35  ls
   36  mv wildtype.fna ../TeamBio
   37  rm wildtype.gbk
   38  grep -i 'tatatata' ../TeamBio/wildtype.fna
   39  grep "tatatata" ../TeamBio/wildtype.fna > mutant_sequences.txt
   40  install Entrez Direct
   41  efetch -db nucleotide -format fasta -id NM_000546 > TP53.fasta
   42  sh -c "$(curl -fsSL https://ftp.ncbi.nlm.nih.gov/entrez/entrezdirect/install-edirect.sh)"
   43  efetch -db nucleotide -format fasta -id NM_000546 > TP53.fasta
   44  $ wget "https://www.ncbi.nlm.nih.gov/sviewer/viewer.cgi?db=nuccore&id=NM_000546&report=fasta&retmode=text" -O TP53.fasta
   45  wget "https://www.ncbi.nlm.nih.gov/sviewer/viewer.cgi?db=nuccore&id=NM_000546&report=fasta&retmode=text" -O TP53.fasta
   46  grep -v "^>" TP53.fasta | wc -l
   47  grep -v "^>" TP53.fasta | grep -o "A" | wc -l
   48  grep -v "^>" TP53.fasta | grep -o "G" | wc -l
   49  grep -v "^>" TP53.fasta | grep -o "C" | wc -l
   50  grep -v "^>" TP53.fasta | grep -o "T" | wc -l
   51  total_bases=$(grep -v "^>" TP53.fasta | tr -d "\n" | wc -c)
   52  gc_count=$(grep -v "^>" TP53.fasta | grep -o "[GC]" | wc -l)
   53  echo "scale=2; ($gc_count/$total_bases)*100" | bc
   54  sudo apt-get install bc
   55  echo "scale=2; ($gc_count/$total_bases)*100" | bc
   56  touch Amara.fasta
   57  A_count=$(grep -v "^>" TP53.fasta | grep -o "A" | wc -l)
   58  echo "A: $A_count" >> Amara.fasta
   59  A_count=$(grep -v "^>" TP53.fasta | grep -o "A" | wc -l)
   60  G_count=$(grep -v "^>" TP53.fasta | grep -o "G" | wc -l)
   61  T_count=$(grep -v "^>" TP53.fasta | grep -o "T" | wc -l)
   62  C_count=$(grep -v "^>" TP53.fasta | grep -o "C" | wc -l)
   63  echo "A: $A_count" >> Amara.fasta
   64  echo "G: $G_count" >> Amara.fasta
   65  echo "T: $T_count" >> Amara.fasta
   66  echo "C: $C_count" >> Amara.fasta
   67  mkdir -p output
   68  mv Amara.fasta output/
   69  cd https://github.com/AMARAXO/hackbio3.git
   70  git clone https://github.com/AMARAXO/hackbio3.git
   71  cd hackbio3
   72  mkdir -p output
   73  mv Amara.fasta output/
   74  mv Amara.fasta
   75  mv /home/nwokochajanefrances/biocomputing/Amara.fasta output/
   76  find ~ -name "Amara.fasta"
   77  mv /home/nwokochajanefrances/biocomputing/output/Amara.fasta
   78  mv /home/nwokochajanefrances/biocomputing/output/Amara.fasta .
   79  ls .
   80  git add output/Amara.fasta
   81  git add Amara.fasta output/
   82  git commit -m "Added Amara.fasta with nucleotide counts"
   83  git config --global user.email "nwokochajanefrances@gmail.com"
   84  git config --global user.name "Amara"
   85  git commit -m "Added Amara.fasta with nucleotide counts"
   86  git push origin main
   87  git push origin master
