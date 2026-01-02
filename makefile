build:
	hugo --minify
	rm -r public/fonts/Monaspace

clean: 
	rm -r public

run: 
	hugo server --disableFastRender -D

pull: 
	git pull && git submodule update --init --recursive --remote --merge

push: pull
	git add . && git commit -m "Update" && git push

format: 
	npx --yes prettier --write "**/*.{js,css}"
	npx --yes @taplo/cli fmt