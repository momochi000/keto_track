# README

## What is this?
It's a super simple keto macro tracker I wrote for myself as a 1 day app 
challenge.  I'm planning to try out the keto diet and I wanted a simple,
lightweight means of tracking my macros.  I also didn't want to download or 
sign up for any web or mobile app.

I've also been preparing myself to sign up for a hackathon and so I thought
this would be a good way to brush up on my web stack by spinning up a
top-of-the-line stack and writing this app within 1 day as a challenge to 
myself.

## Ruby Version: 5.1.2

## Development setup

### Requirements

* docker
* docker-compose

### Instructions
Create a database.yml in config/

Then run:
``` 
docker-compose build && docker-compose up
```

Once the containers are running, run:
```
docker-compose run --rm web ./bin/rails db:create db:migrate dev:seed
```

That's it!

## TODO:
* How to run the test suite

* Deployment instructions

* ...
