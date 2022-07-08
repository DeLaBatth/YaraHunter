all: YaRadare

clean:
	-rm ./YaRadare

YaRadare:
	env PKG_CONFIG_PATH=/usr/local/yara/lib/pkgconfig:$(PKG_CONFIG_PATH) go build -buildvcs=false -v .

.PHONY: clean