VERSION ?= v0.1.0
ZIP = dist/boti_timer_$(VERSION).zip

build:
	mkdir -p dist
	zip -r $(ZIP) pack.mcmeta pack.png data README.md LICENSE.md

release: build
	gh release create $(VERSION) $(ZIP) -t "boti_timer $(VERSION)" -n "Release $(VERSION)"

