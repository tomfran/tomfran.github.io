push_blog: 
	git add . && git commit -m "Update" && git push

build:
	hugo --minify

clean: 
	rm -r public

run: 
	hugo server --disableFastRender -D

push: 
	git submodule update --remote --merge
	git add . && git commit -m "Update" && git push

