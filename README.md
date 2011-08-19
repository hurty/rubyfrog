Rubytaf
============
Job board for rubyists 

Install
-------
With Ruby 1.9.2:

First, install *Bundler* if you don't have it:
`gem install bundler`
 
Go to the rubytaf directory, then use *Bundler* to install all the required gems:
`bundle install`

Set up your database:
`rake db:migrate`

Import the seed data:
`rake db:seed`

Run the server:
`rails server` or just `rails s`
