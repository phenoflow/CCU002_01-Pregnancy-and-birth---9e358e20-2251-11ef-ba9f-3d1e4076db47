# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"169565003","system":"snomedct"},{"code":"47200007","system":"snomedct"},{"code":"80997009","system":"snomedct"},{"code":"609567009","system":"snomedct"},{"code":"16356006","system":"snomedct"},{"code":"237239003","system":"snomedct"},{"code":"10231000132102","system":"snomedct"},{"code":"88144003","system":"snomedct"},{"code":"609563008","system":"snomedct"},{"code":"609566000","system":"snomedct"},{"code":"713576003","system":"snomedct"},{"code":"609564002","system":"snomedct"},{"code":"60810003","system":"snomedct"},{"code":"199223000","system":"snomedct"},{"code":"64254006","system":"snomedct"},{"code":"134781000119106","system":"snomedct"},{"code":"314204000","system":"snomedct"},{"code":"713575004","system":"snomedct"},{"code":"439311009","system":"snomedct"},{"code":"77386006","system":"snomedct"},{"code":"169564004","system":"snomedct"},{"code":"237238006","system":"snomedct"},{"code":"449345000","system":"snomedct"},{"code":"65147003","system":"snomedct"},{"code":"237627000","system":"snomedct"},{"code":"240154002","system":"snomedct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-pregnancy-and-birth-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["pregnant-ccu002_01-pregnancy-and-birth---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["pregnant-ccu002_01-pregnancy-and-birth---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["pregnant-ccu002_01-pregnancy-and-birth---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
