index.css: index.scss
	sass -s compressed index.scss:index.css

.PHONY: clean watch github
clean:
	rm -f *.css *.css.map
watch:
	sass -s compressed --watch index.scss:index.css
github:
	git checkout gh-pages
	git checkout master -- index.css index.html
	git commit -am "Update site templates"
	git push origin gh-pages
	git checkout master
