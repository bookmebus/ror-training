<!-- # README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
# Ruby on Rails Training
## Requirements
* Rails
* PosgreSQL

## Prerequisites
```s
bundle exec rake db:create # create, migrate, seed

# Starting a Rails Server
rails s
```

## Deployment
First you need to [install heroku CLI](https://devcenter.heroku.com/articles/heroku-cli#install-the-heroku-cli), then run following commands:
```shell
heroku login

# for new project
heroku create

# for existing project
heroku git:remote -a existing-project-name-here

# list
git remote -v

# trigger deployment
git push heroku master
```

## Useful Commands
```shell
rails routes
rails console
```