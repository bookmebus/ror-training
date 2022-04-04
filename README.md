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

## Demonstrations
- [Greeting](https://greeting-rails-training.herokuapp.com)
- [Tandibi](https://tandibi-ror-training.herokuapp.com/)

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

### Resolve Errors
#### Conflict Platform Supports
Your bundle only supports platforms ["x86_64-darwin-20"] but your local platform is x86_64-linux:
```
bundle lock --add-platform x86_64-linux
git commit -m "your-message"
git push heroku master
```

## Migrate to PostgreSQL
If you using SQLite & you can migrate to PostgreSQL with following steps:
1. Install PostgreSQL `gem install postgresql`
2. Update to `gem "pg"` in Gemfile
3. Change adapter to postgresql in `database.yml`
4. Install [PostgreSQL app](https://postgresapp.com/downloads.html)
5. Run following commands:
```shell
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```
## Useful Commands
```shell
rails routes
rails console
```

## References
- [Migrate to PostgreSQL](https://medium.com/@virtual_khan/converting-rails-from-sqlite3-to-postgresql-d97023314a14)
