# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# press-app
Press App is a sample project to discovery how to code in Ruby on Rails (ROR) with Test Driven Development (TDD) pattern, and its benefits.

## Description
This first version has a Model named Post, with helper, controller and View, which aims to show how to create validations, e test using de RSpec most famous test framework on ROR.

### The TDD
It was manualy created a test named post_spec.rb. It is a pattern in RSpec to create test classes with the same name of the original class with 'spec' as suffix.
Then:
For model class post.rb, it has a post_spec.rb;
For controller class posts\_contollers.rb, it has a posts\_controller\_spec.rb
For helper class posts\_helper.rb, it has a posts\_helper\_spec.rb

This is the first version of project.
