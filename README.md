# 環境
* macOS High Sierra / WSLのUbuntu18.04
* ruby 2.6.3 (rbenv)  
* SQLite3 (3.19.3)
* Node.js (8.10.0)

# heroku  
https://calm-wildwood-42803.herokuapp.com/buyings  

# memo
バージョンとかはrails tutorialに合わせた  

TDDをやってみたかったやつ　家計簿であることに特に意味はなし  
原理主義っぽく全部の挙動にテストを入れるのを試したが、案の定めんどくさ！！！ってなったので放棄  
もうちょいいいやつをTDDでできることが他で示せればこのリポジトリは用済みだと思う  

* ruby/bundlerが既にある状況下で、cloneから初回起動まで  
```
bundle install --without test production
rails db:migrate
rails test
rails s
```

* herokuデプロイ  
```
heroku create  
(git commit)  
git push heroku master  
heroku run rails db:migrate
```

rbenv、gemでbunlderをupdateしたのにupdateされたbundlerが見えない現象が起きる  
どうもこれ（ https://qiita.com/koshigoe/items/7527bd7f65c2ee33bd85 ）かもしれない  
もしくはbunlderが普通にlockされてたかも　バージョン管理周りまだ正確に把握していない  

下のsassのやつあとで直したい  

```
Post-install message from sass:

Ruby Sass has reached end-of-life and should no longer be used.

* If you use Sass as a command-line tool, we recommend using Dart Sass, the new
  primary implementation: https://sass-lang.com/install

* If you use Sass as a plug-in for a Ruby web framework, we recommend using the
  sassc gem: https://github.com/sass/sassc-ruby#readme

* For more details, please refer to the Sass blog:
  https://sass-lang.com/blog/posts/7828841
```
