# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app #> corneal gem isntalled 
- [x] Use ActiveRecord for storing information in a database #> created migrations
- [x] Include more than one model class (e.g. User, Post, Category) #> have 3 models
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
       #> yser has many managers, manager has many orders and belongs to user, order belongs to manager
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
       #> user has many products and product belongs_to user
- [x] Include user accounts with unique login attribute (username or email)
       #>?autenticate method applied
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
       #>products can be created, read, edited and deleted
- [x] Ensure that users can't modify content created by other users
       #> if user is logged in they can modify only produts that belongs to them
- [x] Include user input validations
       #> empty fields not allowed
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new) #> used SInatra Flash error messages
  [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message