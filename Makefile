index.css:
	scss index.scss index.css

.PHONY: clean watch
clean:
	rm -f *.css *.css.map
watch:
	scss --watch index.scss:index.css
