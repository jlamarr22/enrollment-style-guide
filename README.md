USCIS Style Guide Gem
====================
​
First Steps
------------------------
You will need git ssh access set up on the github account that will be accessing this gem.
If where you will be accessing the gem doesn't already have git setup to use ssh keys, perform the steps outlined here:
https://help.github.com/articles/generating-ssh-keys

​
Including Gem in your Project
----------------------------------------
​
Add the Style Guide Gem to your Gemfile
	```
	gem 'style_guide', :git => 'git@github.com:USCIS/myuscis-style-guide.git', :branch => 'master'
	```​
​This will install the latest version of the style guide to your local.

Run a bundle install to add the gem and restart your server to make the files available through the pipeline.  Subsequently,
whenever the gem changes, you will need to run a bundle update.
​
In the application layout page, add a stylesheet link tag to reference the style guide.

app/views/layouts/application.html.erb

```ruby
<%= stylesheet_link_tag    "enrollment_style_guide/application", media: "all" %>
```

Do not use `//= require` in Sass, or your other stylesheets will not be the Style Guide mixins or variables.
​
Require Style Guide Javascripts with a link tag in the application layout page

```ruby
<%= javascript_include_tag "enrollment_style_guide/application" %>
```
​
If you need to modify the style guide:
*	Checkout a new branch
*	Uncomment out the line in your application's gemfile
	```ruby
	gem 'enrollment_style_guide', :path => '/vagrant_data/enrollment-style-guide'
	```
*	Comment out the preceding line that references the git repo's version
*	Modify the new line to reference the location of the style guide on your machine
	```ruby
	gem 'enrollment_style_guide', :path => '/vagrant_data/<YOUR_DIRECTORIES_HERE>/enrollment-style-guide'
	```
*	Do not check in these changes to the style guide master branch.
