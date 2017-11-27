# README

# Quick-Bytes

## LAUNCH ACADEMY final project

Quick-Bytes is an application that allows users to search food recipes from the Edamam API. Ruby on rails front-end MVC framework provided structured routes and views to display user created recipe lists and allowed easy navigation through rails links. The back-end is supported with PostgreSQL to provide database relations and form functionality. Rails params was used to store information returned from the Edamam API so users can create recipe lists with a touch of a button. 

Quick-Bytes was built to relieve the stress of stumbling around to prepare your next meal. Quick-Bytes allows easy access to over one million recipes so you can find what you want to make. Ingredients and cooking directions are at your fingertips to ease the process of making your next home made meal. Save your favorite recipes to a list and plan ahead to make sure that a healthy meal is always within reach.

https://quick-bytes.herokuapp.com

# Local Setup

Run these in your command line:
```
-git clone https://github.com/Alan-w92/Quick-Bytes
-bundle
-rake db:create
-rake db:migrate
-rake db:seed
-rails s

Testing:
-Rake db:test:prepare
-Rake
```


# Functionality

```
-Prior to login or registration users can search food recipes from the Edamam APIs
-Users are able to use the search bar to query the database for food recipes that match the title 
 or ingredients of any recipes in the Edamam API
-Logged in users can save recipes to their favorites page
-Logged in users can create recipe lists from scratch or create a list off an existing recipe 
 from the search results
-Logged in users can edit and delete the their lists and add comments to existing lists
-Users may edit their account information at any time or remove their account
-Users have access to the google map API for a map of their surrounding area
-Users may search the google map for nearby stores of their choosing 
```

# Technologies
```
-Ruby on Rails
 All view pages are built with rails MVC framework
 Rails forms provide edit and delete functionality to any existing data

-PostgreSQL and Activerecord
 All models and data are save with this database
 User input is validated before being stored

-Devise
 Devise used for user authentication and authorization

-Jquery
 Used to provide HTML manipulation
 
-Edamam API
 Provides recipe data in the form of JSON
 
-Google Map API
 Provides access to live google maps and the ability to search for related areas
```
-Testing
```
--RSPEC database tests
--Capbyara feature tests
```


