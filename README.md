# Image Collection Application

Upload a image a write down the story of your picture as a memories.

## Carrierwave

Using the carrierwave gem to handle the image upload features.

Link: https://github.com/carrierwaveuploader/carrierwave

## Database

I am using the Sqlite3 as my development database, but the production database will be postgresql for Heroku.


## Bootstrap && Jquery

Add gem in the Gemfile

```
  gem 'bootstrap-sass', '3.3.7'
  gem 'jquery-rails'
```

Create a scss file

```
touch app/assets/stylesheets/custom.scss
```

Add the code below in the file above

```
@import "bootstrap-sprockets";
@import "bootstrap";
```

## Version

Please take note that might minor changes of syntax on different version

```
    ruby                      ==   2.5.1
    rails                     ==   5.2.1
    rvm                       ==   1.29.4
    nodejs                    ==   8.10
    bootstrap-sass            ==   3.3.7
    jquery-rails              ==   4.3.3
    sass-rails                ==   5.0.6
    rails-controller-testing  ==   1.0.2
    minitest                  ==   5.11.3
    minitest-reporters        ==   1.3.4
    guard                     ==   2.14.2
    guard-minitest            ==   2.4.6
    pg                        ==   0.18.4
    sqlite3                   ==   1.3.13
    carrierwave               ==   1.2.3
    mini_magick               ==   4.9.2
    file_validators           ==   2.3.0
```
