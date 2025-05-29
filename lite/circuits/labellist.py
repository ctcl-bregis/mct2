import os
import re

# Replace this with your top-level schematic
project_dir = "mct2_lite/"

# Store all found labels
all_labels = set()

# Regex to match labels: local, global, and hierarchical
label_re = re.compile(r'\(\s*(?:label|global_label|hierarchical_label)\s+"([^"]+)"')

def scan_directory_for_schematics(root):
    for dirpath, _, filenames in os.walk(root):
        for file in filenames:
            if file.endswith(".kicad_sch"):
                full_path = os.path.join(dirpath, file)
                with open(full_path, "r", encoding="utf-8") as f:
                    content = f.read()
                    labels = label_re.findall(content)
                    all_labels.update(labels)

# Run the scan
scan_directory_for_schematics(project_dir)

# Output the results
print(len(all_labels), "labels found")
for label in sorted(all_labels):
    print(label)
