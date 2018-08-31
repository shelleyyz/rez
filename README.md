# README

## PROJECT #1 TODO: Meet You.

[Link to live site](https://rez-bot.herokuapp.com/)
Login details - shelley@ga.co password: chicken

## Rez.
A blogging application that features a chatbot that will direct you to relevant posts written by other users based on what you input. Users can view other profiles, view public posts, view their own private posts, filter posts by categories, add comments to posts and of course, chat to Rez! Rez will be able to direct you to the posts page with filters applied based on what the user chooses to input e.g. posts relating to depression/anxiety.

## How to use
* Log in via the homepage if you have an account
* Sign up as a new user
* Create your own profile with image upload
* Create blog posts that can either be public or private. Private posts can only be viewed by the user who created the post.
* Add comments to posts  
* Users can go to the original poster's profile
* Admin functionality

## Objectives
* The app should have at least 3 models. Currently Category, Conversation, Mailbox, Relationship and User.
* Use partials to DRY (Don’t Repeat Yourself) up your views.
* Handles invalid data. Forms in your application should validate data and handle incorrect inputs. Validate sign up information, verify valid email addresses and secure passwords.
* Use Gems Use a GEM that talks to an API to add functionality to your app.
* User Login Make sure you have basic authentication and authorization set up (if you need it).
* Deploy your code to Heroku.

## Technologies
* File upload. The project uses Cloudinary and the attachinary gem for single and multiple image uploads.
* The project uses the search functionality of ruby gem Geocoder that takes an address from user input and searches for its latitude and longitude coordinates. This connects to the Google Maps API and will display when a user updates their user profile or signs up to the site
* Zodiac sign gem to determine a user's star sign based on their date of birth
* Slick for carousel display of images
* Open Trivia Database (API)
* jQuery
* Javascript
* AJAX
* Ruby on Rails
* HTML & CSS

## To Do:
- [ ] Date location generator
- [ ] Advanced styling
- [ ] React
- [ ] Web sprockets for live chat
