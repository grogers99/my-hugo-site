THEME ?= ananke

.PHONY: serve build themes serve-ananke serve-hextra serve-console

serve:
	hugo server --buildDrafts --disableFastRender --config hugo.toml,config/themes/$(THEME).toml

build:
	hugo --config hugo.toml,config/themes/$(THEME).toml

themes:
	@echo "Available themes: ananke, hextra, console"
	@echo "Use: make serve THEME=hextra"
	@echo "Or : make serve-ananke | make serve-hextra | make serve-console"

serve-ananke:
	$(MAKE) serve THEME=ananke

serve-hextra:
	$(MAKE) serve THEME=hextra

serve-console:
	$(MAKE) serve THEME=console
