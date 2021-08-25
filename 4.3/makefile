main:	download login create
clean:
	rm -r lab4.2
	rm -r lab4.3

download:
	git clone https://github.com/NeneWang/lab4.2.git
	git clone --branch deploy-replica https://github.com/NeneWang/lab4.3.git

login:
	heroku login
61e33cb800d4c97678a189c68bfd9d80c60e90db9cc16f171d005920ee3b7ee2b460ae8ca31e9b8bb6fb423a30191a8c46aec72ec0110353cd45c938df2f3abb92187be40c9cf0d5d3044e0770e4
create:
	cd lab4.2
	npm install
	git init
	git add .
	git commit -m "backend commit"
	heroku create questboardbackend
	heroku git:remote -a questboardbackend
	git push heroku HEAD:master
	cd ..
	cd lab4.3
	git init
	git add .
	git commit -m "frontend commit"
	heroku create questboardfrontend
	heroku git:remote -a questboardfrontend
	git push heroku HEAD:master
	cd ..


deploy:
	cd lab4.2
	git push heroku master
	heroku open
	cd ..
	cd lab4.3
	git push heroku main
	heroku open
	cd ..
