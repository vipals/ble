.PHONY: libs

SOURCES=scan.c post-callback.c
HEADERS=$(wildcard *.h)

blescan: $(SOURCES) $(HEADERS)
	$(CC) $(SOURCES) -Wall -Wextra -Werror -lbluetooth -lcurl -o blescan

libs:
	sudo apt-get install libbluetooth-dev libcurl4-gnutls-dev
