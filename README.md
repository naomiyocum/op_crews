# Relational Rails - One Piece Crews!

![GitHub language count](https://img.shields.io/github/languages/count/naomiyocum/op_crews)
![GitHub top language](https://img.shields.io/github/languages/top/naomiyocum/op_crews?color=yellow)

## Table of contents
* [General Info](#general-info)
* [Technologies](#technologies)
* [Learning Goals](#learning-goals)
* [Usage](#usage)

## General Info
This is a solo project that was assigned to us during week 1 of Mod 2. For our first project in Rails, we were to create a one-to-many relationship with our data.

## Technologies
Project is created with:
* Rails 5.2
* Ruby 2.7

## Learning Goals
* Write migrations to create tables with columns of varying data types and foreign keys.
* Use Rails to create web pages that allow users to CRUD resources.
* Create instance and class methods on a Rails model that use ActiveRecord methods and helpers.
* Write model and feature tests that fully cover data logic and user behavior.

## Schema Design
Below is my design for the one-to-many relationship we were to create for this project. 
Influenced my One Piece (great anime btw) - a crew has many characters and a character belongs to a crew.

![screen_shot_2022-10-19_at_12 09 16_pm](https://user-images.githubusercontent.com/102825498/196771136-2f9e938b-acc6-4d7f-aa30-2a74d478873b.png)

## Usage

First, clone this repo onto your local machine.
Then, run the following in your Terminal:

```
bundle install
rails db:{drop,create,migrate,seed}
rails s
```
Lastly, head to your web browser and type `localhost:3000`.

Sweet, now you're on my main page! There are already some crews and members created for you. Feel free to add more, edit the existing ones, or even delete some (who cares about the Blackbeard Pirates, right?).
