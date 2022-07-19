SRC_DIR=book_source/source

html:
	jupyter-book build "$(SRC_DIR)"

clean:
	jupyter-book clean "$(SRC_DIR)"

html-deploy:
	jupyter-book build -W "$(SRC_DIR)"

