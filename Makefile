.PHONY: all echo clear-bw update decrypt encrypt sync-bw cleanup prepare

all: echo

echo: 
	@echo "Please login to bw and run 'make update'"

update: prepare decrypt clear-bw sync-bw encrypt cleanup

prepare:
	mkdir ramdisk && sudo mount -t tmpfs -o size=1024m ramdisk ./ramdisk && sudo chown -R hernil:hernil ramdisk

clear-bw: 
	rm -rf ramdisk/data/bitwarden && mkdir ramdisk/data/bitwarden

decrypt:
	./scripts/decrypt-data.sh

encrypt:
	./scripts/encrypt-data.sh

sync-bw:
	./scripts/bw-export.sh

cleanup:
	sudo umount ramdisk && rm -rf ramdisk
