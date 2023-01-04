# README

## Installation

* Clone repository: `git@github.com:lionffl/bbkm-api.git`
* Install the required dependencies: `bundle install`
* Set up environment variables by renaming `envs.rb.example` to `envs.rb`
* Run postgresql container: `docker-compose up`
* Set up the database: `rails db:create`, `rails db:migrate`
* Start the server: `rails server`

The server should now be running at http://localhost:3000.

