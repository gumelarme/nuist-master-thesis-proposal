build:
	typst compile proposal.typ \
		--font-path /home/kasuari/.nix-profile/share/fonts \
		--format pdf \

watch:
	typst watch proposal.typ \
		--font-path /home/kasuari/.nix-profile/share/fonts \
		--format pdf \

font-list:
	typst fonts \
		--font-path /home/kasuari/.nix-profile/share/fonts \

clean:
	rm proposal.pdf
