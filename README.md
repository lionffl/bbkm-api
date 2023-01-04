# README

## Pre req

* Ruby 3.2.0
* Rails 7.0.4

## Installation

* Clone repository: `git clone git@github.com:lionffl/bbkm-api.git`
* Navigate to project folder: `cd bbkm`
* Install the required dependencies: `bundle install`
* Set up environment variables by renaming `config/envs.rb.example` to `envs.rb`
* Run postgresql container: `docker-compose up`
* Set up the database: `rails db:create`, `rails db:migrate`
* Start the server: `rails server`

The server should now be running at http://localhost:3000.

## Basic Usage

1) Creating tags

* Send a POST request to the endpoint: localhost:3000/tags
* Body example:
```
{
    "name": "one tag"
}
```
* Expected response:
```
{
    "id": 2,
    "name": "one tag",
    "created_at": "2023-01-04T16:57:38.439Z",
    "updated_at": "2023-01-04T16:57:38.439Z"
}
```

2) Creating a System

* Send a POST request to the endpoint: localhost:3000/systems
* Body example:
```
{
    "name": "Some System",
    "hostname_production": "Some hostname",
    "hostname_homologa": "Some hostname",
    "description": "This is a system",
    "active": true
}
```
* Expected response:
```
{
    "id": 1,
    "name": "Some System",
    "hostname_production": "Some hostname",
    "hostname_homologa": "Some hostname",
    "description": "This is a system",
    "active": true,
    "created_at": "2023-01-04T16:56:57.432Z",
    "updated_at": "2023-01-04T16:56:57.432Z"
}
```
3) Creating a Procedure

* Send a POST request to the endpoint: localhost:3000/procedures
* Body example:
```
{
    "review_id": 1,
    "review_interval": 1,
    "active": false
}
```
* Expected response:
```
{
    "id": 1,
    "review_interval": 1,
    "active": false,
    "created_at": "2023-01-04T16:57:03.937Z",
    "updated_at": "2023-01-04T16:57:03.937Z"
}
```
4) Creating a Review

* Send a POST request to the endpoint: localhost:3000/procedures
* Body example:
```
{
    "version": 1,
    "title": "Some title",
    "author": "Some author",
    "environment": "Some environment",
    "summary": "Some summary",
    "system_id": 1,
    "procedure_id": 1
}
```
* Expected response:
```
{
    "id": 1,
    "version": 1,
    "title": "Some title",
    "author": "Some author",
    "environment": "Some environment",
    "summary": "Some summary",
    "instructions": null,
    "created_at": "2023-01-04T16:57:16.387Z",
    "updated_at": "2023-01-04T16:57:16.387Z",
    "system_id": 1,
    "procedure_id": 1
}
```

## Other endpoints

1) Getting all reviews:


* Send a GET request to the endpoint: localhost:3000/reviews

* Expected response:
```
[
    {
        "id": 1,
        "version": 1,
        "title": "Some title",
        "author": "Some author",
        "environment": "Some environment",
        "summary": "Some summary",
        "instructions": null,
        "created_at": "2023-01-04T16:57:16.387Z",
        "updated_at": "2023-01-04T16:57:16.387Z",
        "system_id": 1,
        "procedure_id": 1,
        "tags": [
            {
                "id": 1,
                "name": "another tag",
                "created_at": "2023-01-04T16:57:28.751Z",
                "updated_at": "2023-01-04T16:57:28.751Z"
            },
            {
                "id": 2,
                "name": "one tag",
                "created_at": "2023-01-04T16:57:38.439Z",
                "updated_at": "2023-01-04T16:57:38.439Z"
            }
        ]
    }
]
```

1) Getting one review:


* Send a GET request to the endpoint: localhost:3000/reviews/1

* Expected response:
```
{
    "id": 1,
    "version": 1,
    "title": "Some title",
    "author": "Some author",
    "environment": "Some environment",
    "summary": "Some summary",
    "instructions": null,
    "created_at": "2023-01-04T16:57:16.387Z",
    "updated_at": "2023-01-04T16:57:16.387Z",
    "system_id": 1,
    "procedure_id": 1,
    "tags": [
        {
            "id": 1,
            "name": "another tag",
            "created_at": "2023-01-04T16:57:28.751Z",
            "updated_at": "2023-01-04T16:57:28.751Z"
        },
        {
            "id": 2,
            "name": "one tag",
            "created_at": "2023-01-04T16:57:38.439Z",
            "updated_at": "2023-01-04T16:57:38.439Z"
        }
    ]
}
```
