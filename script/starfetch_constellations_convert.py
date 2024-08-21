# Modify from https://github.com/CoderCharmander/starfetch/blob/master/convert.py
# By GPT-3.5🧙, see https://shareg.pt/a2IZp52
# Run `python convert.py file.json` to convert `file.json` to `cvt_file.json`.
# Then run `prettier --write --paser json cvt_file.json` to format it.

"""
Converts constellations from the format in Haruno19/starfetch to the format
used in this Rust rewrite of the program.
"""
import sys
import json

input_file = sys.argv[1]
output_file = "cvt_" + input_file

with open(input_file, 'r', encoding='utf-8') as f:
    orig_json = json.load(f)

stars = []
for i in range(1, 11):
    line_key = f"line{i}"
    if line_key in orig_json["graph"]:
        for k, v in orig_json["graph"][line_key].items():
            stars.append([int(k) - 1, i - 1, v])

output_json = {
    "title": orig_json["title"],
    "graph": stars,
    "name": orig_json["name"],
    "quadrant": orig_json.get("quadrant", ""),
    "right_ascension": orig_json.get("right ascension", ""),
    "declination": orig_json.get("declination", ""),
    "area": orig_json.get("area", ""),
    "main_stars": orig_json.get("main stars", "")
}

# Convert the format of graph to the specified style
output_json["graph"] = [[item[0], item[1], item[2]] for item in stars]

with open(output_file, 'w', encoding='utf-8') as f:
    json.dump(output_json, f, ensure_ascii=False, indent=4)