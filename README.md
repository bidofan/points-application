# Points Application (Back-end) - Simple app

Simple application to operate points using **Ruby on Rails**, focused on API development, data storage and background processing.

## Setup & Local development

Required **Ruby verision** `3.3.0`

- Install gems:
    ```bash
    bundle install
    ```
- Run **Rails Server**:
    ```bash
    bundle exec rails s
    ```
- Run **Sidekiq**:
    ```bash
    bundle exec sidekiq
    ```

Server will be accessible on:

``localhost:3000``

## File structure

> Structure of main project folders

    ├── ...
    ├── app                    # Application folder
    │   └── contracts          # Validation of request parameters and model attributes
    │   └── controllers        # Endpoints
    │   └── events             # Business logic that works with database (CRUD)
    │   └── jobs               # Parallel workers
    │   └── models             # Database presentational data
    │   └── queries            # Queries to the database
    │   └── serializers        # JSON Serialization of ActiveRecord object
    │   └── services           # Business logic that works with 3rd party
    ├── config                 # Configuration and initialization files
    ├── swagger                # API Documentation (APIDoc)
    ├── spec                   # Test files
    ├── ...

## API documentation
When servers is running visit:

[Swagger API DOC](http://localhost:3000/api-docs/index.html) – *localhost/api-docs/index.html*

<img width="1440" alt="Screenshot 2024-07-21 at 14 56 14" src="https://github.com/user-attachments/assets/dc067eae-0a35-40b9-9253-ac8b2d64635f">

## Testing

Run **Rspec** tests:

```bash
bundle exec rspec
```
Run **Swagger** tests:

```bash
bundle exec rails rswag
```

## Docker
```
#TODO
```
