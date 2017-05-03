![ruby](https://img.shields.io/badge/Ruby-2.4.1-red.svg)
![rails](https://img.shields.io/badge/Rails-5.0.1-red.svg)
![rails](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)

# Exchange

----
## About this project
This project calculates the exchange between different currencies.

You can see this app here: [My Exchange App](http://my-exchange-app.herokuapp.com)

![Exchange](https://raw.githubusercontent.com/rafael-acerqueira/exchange/master/app/assets/images/screenshot.png)

----
## Getting Started
    1. docker-compose build
    2. docker-compose run --rm website rake db:create db:migrate
    3. docker-compose up


----
## Test
    docker-compose run --rm website rspec
