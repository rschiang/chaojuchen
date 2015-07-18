index.css:
	scss -t compressed index.scss index.css

.PHONY: clean watch
clean:
	rm -f *.css *.css.map
watch:
	scss -t compressed --watch index.scss:index.css
