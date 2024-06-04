# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"198953006","system":"snomedct"},{"code":"198952001","system":"snomedct"},{"code":"20753005","system":"snomedct"},{"code":"37618003","system":"snomedct"},{"code":"22966008","system":"snomedct"},{"code":"198949009","system":"snomedct"},{"code":"78808002","system":"snomedct"},{"code":"23717007","system":"snomedct"},{"code":"198947006","system":"snomedct"},{"code":"10757441000119102","system":"snomedct"},{"code":"71874008","system":"snomedct"},{"code":"198942000","system":"snomedct"},{"code":"198954000","system":"snomedct"},{"code":"34694006","system":"snomedct"},{"code":"8218002","system":"snomedct"},{"code":"10754881000119104","system":"snomedct"},{"code":"65402008","system":"snomedct"},{"code":"198946002","system":"snomedct"},{"code":"199005000","system":"snomedct"},{"code":"199006004","system":"snomedct"},{"code":"18416000","system":"snomedct"},{"code":"1474004","system":"snomedct"},{"code":"198945003","system":"snomedct"},{"code":"76751001","system":"snomedct"},{"code":"59733002","system":"snomedct"},{"code":"199007008","system":"snomedct"},{"code":"10759031000119106","system":"snomedct"},{"code":"198944004","system":"snomedct"},{"code":"198951008","system":"snomedct"},{"code":"106281000119103","system":"snomedct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-pregnancy-and-birth-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-pregnancy-and-birth-complication---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-pregnancy-and-birth-complication---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-pregnancy-and-birth-complication---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
