#!/bin/bash

# creating the indexes
mkdir indexes

echo "Create the names map index..."
python scripts/create_index_names.py -n data/FB5M.name.txt -p indexes/names.pkl

echo "Create the reachability index for 2M-freebase-subset..."
python scripts/create_index_reachability.py -s data/SimpleQuestions_v2/freebase-subsets/freebase-FB2M.txt -p indexes/reachability_2M.pkl

echo "Create the reachability index for 5M-freebase-subset..."
python scripts/create_index_reachability.py -s data/SimpleQuestions_v2/freebase-subsets/freebase-FB5M.txt -p indexes/reachability_5M.pkl

echo "Create the inverted index for entity names..."
python scripts/create_index_names.py -n data/FB5M.name.txt -p indexes/entity.pkl

echo "DONE!"