#!/usr/bin/env bash

INPUT=$1

# Convert sourcecode blocks
cat $INPUT | \
    sed 's/.. sourcecode/.. code/' | \
    pandoc --from=rst --to=markdown | \
    sed 's/{.sourceCode \.\([a-z]\+\)}/\1/' | \
    ./frontmatter.py