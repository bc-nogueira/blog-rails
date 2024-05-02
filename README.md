# Blog Rails

This is a simple blog app made for a challenge. It uses Ruby 3.2.2 and Rails 7.0.8.1.

## Features

- Authentication.
  - Sign up, sign in, update profile (including password) and cancel account.
- Posts CRUD.
  - Logged users can read, create, update and destroy posts.
  - Non-logged users can read posts.
- Comments CRUD.
  - Logged users can leave comments and manage their comments.
  - Non-logged users can leave comments which will show as an anonymous comment.
- Tags CRUD.
  - Only logged users can manage tags.

## Gems

- devise
- pagy

**For local and test environments:**

- awesome_print
- faker
- pry
- pry-byebug
- rubocop

## How to run locally

1. Clone the repo to your local machine.
2. Run `bundle install`
3. Run `npm install`
4. Run `rails db:create` and `rails db:migrate`
5. Run `rails server`
