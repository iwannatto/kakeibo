# README
* ruby 2.6.3

* in development/test environent, Windows is not supported, SQLite3(3.19.3) is required

* to database creation, rails db:migrate

* to run tests, rails test

* use heroku to deploy, heroku create, (git commit), git push heroku master, heroku run rails db:migrate

# memo
バージョンとかはrails tutorialに合わせた  
TDDを意識（しすぎた結果開発がスローダウンした）  
https://calm-wildwood-42803.herokuapp.com/buyings  

bundle install --without test production

rbenv、gemでbunlderをupdateしたのにupdateされたbundlerが見えない　意味不明  
rehash連打とかで急にrailsが通るようになって意味不明  
まあでも動くからとりあえずいいや  
多分gemからのみ見えるbundlerがどっかに入ってると思うんだけどうーん  
どうもこれ（https://qiita.com/koshigoe/items/7527bd7f65c2ee33bd85）っぽいな
2.6.3なのにbundlerが上がってなくて直ってないのマジ？  
まあ原因わかったし今んとこ致命傷でないのでそんな気にしなくていいか  

## Post-install message from sass:

Ruby Sass has reached end-of-life and should no longer be used.

* If you use Sass as a command-line tool, we recommend using Dart Sass, the new
  primary implementation: https://sass-lang.com/install

* If you use Sass as a plug-in for a Ruby web framework, we recommend using the
  sassc gem: https://github.com/sass/sassc-ruby#readme

* For more details, please refer to the Sass blog:
  https://sass-lang.com/blog/posts/7828841

