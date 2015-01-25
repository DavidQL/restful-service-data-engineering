## Summary

This RESTful service exposes endpoints for managing a list of contacts.

## Local setup

Ensure you are using Ruby 2.2.0. After cloning down this repo,bundle your gems:

`bundle install`

Then set up your database:

`rake db:migrate`
`rake db:setup`

Finally, run the server:

`rails s`

## Model

The `Contact` model has the following attributes:

- `first_name`
- `last_name`
- `phone`

All are strings.

## API endpoints

The following endpoints are supported:

`GET    /api/v1/contacts`

`POST   /api/v1/contacts`

`PUT    /api/v1/contacts/:id`

`DELETE /api/v1/contacts/:id`
