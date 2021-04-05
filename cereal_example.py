"""
Name: Akbar Agha
Description: Read data from a CSV file with cereal data and print only those which have 
more than 5 grams of fiber
"""
import os
import csv

cereal_csv_path = os.path.join("Resources", "cereal.csv")

# Open and read csv
with open(cereal_csv_path, newline="") as csvfile:
    csv_reader = csv.reader(csvfile, delimiter=",")

    # Read the header row first (skip this part if there is no header)
    csv_header = next(csvfile)
    print(f"Header: {csv_header}")

    # Read through each row of data after the header
    for row in csv_reader:

        # Convert row to float and compare to grams of fiber
        if row[7] >= 5:
            print(row)