#!/bin/bash

# Create necessary directories
mkdir -p images
mkdir -p content

# Define the list of profiles with names, institutions, and countries as a multi-line string
profiles="
Maribel Acosta|Karlsruher Institut für Technologie|DE
Peter Boncz|CWI|NL
Sourav Bhowmick|Nanyang Technological University|SG
Angela Bonifati|Université Lyon 1 & IUF|FR
Diego Calvanese|University of Bozen-Bolzano|IT
Daniele Dell’Aglio|Aalborg University|DK
Anastasia Dimou|Katholieke Universiteit Leuven|BE
Thomas Eiter|Vienna University of Technology|AU
Lorena Etcheverry|Universidad de la República|UY
Katja Hose|Vienna University of Technology|AU
Vasiliki Kalavri|Boston University|US
Sebastian Link|University of Auckland|NZ
Matteo Lissandrini|University of Verona|IT
Andrea Mauri|Université Lyon 1|FR
Alexandra Rogova|Université de Paris|FR
Christopher Rost|Universität Leipzig|DE
Petra Selmer|Bloomberg|UK
Maria-Esther Vidal|Leibniz Universität Hannover|DE
Hannes Voigt|Neo4j|DE
"

# Loop through each line in the profiles string
while IFS='|' read -r name institution country; do
    # Skip empty lines
    [[ -z "$name" ]] && continue

    # Generate the file-friendly name by replacing spaces with underscores and converting to lowercase
    file_name=$(echo "$name" | tr ' ' '_' | tr '[:upper:]' '[:lower:]')

    # Create the image file
    touch "images/${file_name}.jpg"

    # Create the content .md file with basic information
    echo "---" > "content/about_${file_name}.md"
    echo "name: $name" >> "content/about_${file_name}.md"
    echo "institution: $institution" >> "content/about_${file_name}.md"
    echo "country: $country" >> "content/about_${file_name}.md"
    echo "---" >> "content/about_${file_name}.md"
    echo "Bio and additional details about $name can be added here." >> "content/about_${file_name}.md"

    # Print a message indicating the files created
    echo "Created files: images/${file_name}.jpg and content/about_${file_name}.md"
done <<< "$profiles"

echo "All .jpg and .md files have been created."