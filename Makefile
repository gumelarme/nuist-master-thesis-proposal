build:
	typst compile proposal.typ \
		--font-path ./assets \
		--format pdf \
		# --font-path /home/kasuari/.nix-profile/share/fonts \

watch:
	typst watch proposal.typ \
		--font-path ./assets \
		--format pdf \
		# --font-path /home/kasuari/.nix-profile/share/fonts \

font-list:
	typst fonts \
		--font-path ./assets \
		# --font-path /home/kasuari/.nix-profile/share/fonts \

clean:
	rm proposal.pdf
