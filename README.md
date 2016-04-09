<div align="left">
  <a href="https://github.com/juanroldan1989/foodie-blog-api"><img width="300" src="https://github.com/juanroldan1989/foodie-blog-api/raw/master/app/assets/images/icon.png" alt="foodie blog api logo" /></a>
</div>

# "Foodie" Blogging platform
[![Code Climate](https://codeclimate.com/github/juanroldan1989/foodie-blog-api/badges/gpa.svg)](https://codeclimate.com/github/juanroldan1989/foodie-blog-api)
[![Build Status](https://travis-ci.org/juanroldan1989/foodie-blog-api.svg?branch=master)](https://travis-ci.org/juanroldan1989/foodie-blog-api)
[![Coverage Status](https://coveralls.io/repos/github/juanroldan1989/foodie-blog-api/badge.svg?branch=master)](https://coveralls.io/github/juanroldan1989/foodie-blog-api?branch=master)

Rails API meant to store resources (`Posts`, `Recipes`, `Reviews` and `ActivityItems`) and provide the backend for this Cooking Blog: https://github.com/juanroldan1989/foodie-blog

# Development
Setup and run Redis:
```
http://redis.io/topics/quickstart
```

Clone repository:
```
git clone git@github.com:juanroldan1989/foodie-blog-api.git
```

Install gems:
```
bundle install
```

Setup DB:
```
rake db:migrate
```

Validate test suite:
```
rake test
```

Set example content:

```
rake set:example:content
```

Launch server:

```
foreman start
```

# Endpoints

Create Posts/Reviews/Recipes:

```
curl -H "Content-Type:application/json; charset=utf-8" -d '{"post": { "user_id": 3, "title":"This is my first post","body":"I've always wanted to write about food!"}}' http://localhost:5000/posts
```

Retrieve Posts/Reviews/Recipes:

```
curl http://localhost:5000/posts
```

Retrieve ActivityItems generated:

```
curl http://localhost:5000/activity_items
```

# Live App

EmberJS App: https://foodie-blog.herokuapp.com/        - Rails API: https://foodie-blog-api.herokuapp.com/v1/activity_items

EmberJS App: https://foodie-blog.herokuapp.com/posts   - Rails API: https://foodie-blog-api.herokuapp.com/v1/posts

EmberJS App: https://foodie-blog.herokuapp.com/recipes - Rails API: https://foodie-blog-api.herokuapp.com/v1/recipes

EmberJS App: https://foodie-blog.herokuapp.com/reviews - Rails API: https://foodie-blog-api.herokuapp.com/v1/reviews
