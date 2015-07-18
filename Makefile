index.css:
	scss -t compressed index.scss index.css

.PHONY: clean watch github
clean:
	rm -f *.css *.css.map
watch:
	scss -t compressed --watch index.scss:index.css
github:
	git checkout gh-pages
	git commit -am "Update site templates"
	git push origin gh-pages
	git checkout master
