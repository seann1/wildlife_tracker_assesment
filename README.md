Wildlife Tracker for [Conventional rails assessment](http://www.learnhowtoprogram.com/lessons/conventional-rails-assessment) for [Epicodus](http://www.epicodus.com/).

This application lets users create lists of animals and list sightings for each animal.

the app is on [Heroku](http://wildlife-assesment.herokuapp.com/).

##Setup
In your terminal, clone this repo:

```console
$ clone https://github.com/seann1/wildlife_tracker_assesment.git
```

Install [postgres](http://www.postgresql.org/download/) and start the server:

```console
$ postgres
```
Install all dependencies:

```console
$ bundle install
```

Set up the databases on your local machine:

```console
$ rake db:create
$ rake db:migrate
```

Finally, start the rails server:

```console
$ rails s
```
The app should be available now at 'localhost:3000'

License
MIT

README inspired by [Nick Bernard](http://nrbernard.com)

By Sean Niesen
