#!/bin/bash
cat *.fasta | grep -oE "gb\|\w+" | grep -oE "\w+" | grep -v "gb"