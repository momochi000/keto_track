# README

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
