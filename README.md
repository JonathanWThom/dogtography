# Dogtography

## Jonathan Thom

A mock website for a dog photography studio. Built using Ruby on Rails. Incorporates user authentication with Devise, admin privileges, attachment adding via the Paperclip gem, and ActionMailer. 2.17.17.

### Installation

* _View a seeded and deployed version on [Heroku](https://dogtography.herokuapp.com/)_

* _Email me if you want try out the admin privileges_

* _Or, to run locally, in the command line, run:_
```
postgres
```
* _Then, in another window (you may need to prepend rake/rails commands with 'bundle exec'):_
```
git clone https://github.com/JonathanWThom/dogtography
cd dogtography
bundle install
rake db:create
rake db:migrate db:test:prepare
rails s
```
* _Then, in any modern browser, navigate to:_
```
localhost:3000
```

### Known Bugs

_Mailer currently only works in development due to Mailgun sandbox restrictions_

### Support and contact details

_Email Jonathan at [jonathan.thom1990@gmail.com](jonathan.thom1990@gmail.com)_

### Technologies Used

* _Ruby_
* _Rails_
* _ActiveRecord_
* _HTML_
* _SASS_
* _Bootstrap 3_

### License

MIT

Copyright (c) 2016 **_Jonathan Thom_**
