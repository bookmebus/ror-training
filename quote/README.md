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

## Scaffold quote
```s
rails g scaffold VQuote quote:text authur:text
rails db:migrate
```

## Add user references to quotes
```s
rails g migration AddUserRefToVQuotes user:references
rails db:migrate
```