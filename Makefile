.PHONY: all echo clear-bw update decrypt encrypt sync-bw cleanup

all: echo

echo: 
	echo "Please login to bw and run 'make update'"

update: decrypt clear-bw sync-bw encrypt cleanup

clear-bw: 
	rm -rf data/bitwarden && mkdir data/bitwarden

decrypt:
	./scripts/decrypt-data.sh

encrypt:
	./scripts/encrypt-data.sh

sync-bw:
	./scripts/bw-export.sh

cleanup:
	rm -rf data && rm -rf instructions
