
log_file_path = 'lp.txt' 


with open(log_file_path, 'r') as file:
    log_lines = file.readlines()

dict = {}

for line in log_lines:
    word_array = line.split()
    dict[word_array[2]] = dict.get(word_array[2], 0) + 1
    
print(dict)

output_file_path = 'output.txt'
with open(output_file_path, 'w') as output_file:
    for log_type, count in dict.items():
        output_file.write(f"{log_type}: {count}\n")

print(f"Log counts have been saved to {output_file_path}")
