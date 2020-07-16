# Invue

Invoice & Online Bookkeeping for Small Business

## Built With

- [Rails](https://rubyonrails.org)
- [Postgres](http://postgresql.org/)

Plus *some* of packages, a complete list of which is at [/master/Gemfile](https://github.com/michelsazevedo/invue/blob/master/Gemfile).

## Instructions

### Install with Docker
[Docker](www.docker.com) is an open platform for developers and sysadmins to build, ship, and run distributed applications, whether on lapops, data center VMs, or the cloud.

If you haven't used Docker before, it would be good idea to read this article first: Install [Docker Engine](https://docs.docker.com/engine/installation/)

1. Install [Docker](https://www.docker.com/what-docker) and then [Docker Compose](https://docs.docker.com/compose/):

2. Run `docker-compose build --no-cache` to build the image for the project.

3. Setup database:
    * For **development**: 
    `docker-compose run --rm web bundle exec rake db:setup`
    * For **test**: 
    `docker-compose run --rm test bundle exec rake db:setup`

4. Finally, start your local server with `docker-compose up web` and invue should be up and running on your localhost!

5. Aaaaand, you can run the automated tests suite running a `docker-compose run --rm test` with no other parameters!

## License
Copyright © 2020
