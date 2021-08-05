main:	download deployheroku
clean:
	rm -r lab4.2
	rm -r lab4.3

download:
	git clone https://github.com/NeneWang/lab4.2.git
	git clone --branch deploy-replica https://github.com/NeneWang/lab4.3.git

deployheroku:
	heroku login
	cd lab4.2
	heroku create questboardbackend
	git push heroku master
	heroku open
	cd ..
	cd lab4.3
	heroku create questboardfrontend
	git push heroku main 
	heroku open