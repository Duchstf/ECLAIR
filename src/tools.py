def insert_to_file(template_path, outfile_path, insertions):

    # Read the template content
    with open(template_path, "r") as f: lines = f.readlines()

    # Insert generated content below comments
    new_lines = []
    for line in lines:
        new_lines.append(line)
        for key, content in insertions.items():
            if key in line:
                new_lines.append(content)

    with open(outfile_path, "w") as f: f.writelines(new_lines)