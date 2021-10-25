.PHONY: all clean test

RAW_URL = "https://ylmrdm.github.io/download/train.csv"

all: data/raw/train.csv

clean:
	rm -f data/raw/*.csv

data/raw/train.csv:
	python src/download.py $(RAW_URL) $@

test: all
	pytest src