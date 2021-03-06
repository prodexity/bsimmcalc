source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1'

# FIXME: remove this when Minitest+Rails is fixed
# https://github.com/seattlerb/minitest/issues/730
gem 'minitest', '5.10.3'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use Puma as the app server
# gem 'puma', '~> 3.0'

# Use thin as the app server in development / testing
gem 'thin'

# Authentication
gem 'devise'

# Admin UI theme based on Bootstrap
gem 'gentelella-rails'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use KnockoutJS for client-side MVVM
gem 'knockoutjs-rails'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  # Use Capistrano for deployment
  gem "capistrano", "~> 3.10", require: false
  # Capistrano Rails extensions
  gem "capistrano-rails", "~> 1.3", require: false
  # Only compile assets if changed
  gem 'capistrano-faster-assets'
  # Capistrano Passenger extensions
  gem 'capistrano-passenger'
  # Listen to file modifications
  gem 'listen', '~> 3.0.5'
  # Static security scan
  gem 'brakeman', require: false
  # Rubocop for a consistent coding style
  gem 'rubocop', require: false
  # Draw nice ERD diagrams for the database -> sudo apt-get install graphviz
  gem 'rails-erd'
  # Calculate code coverage
  gem 'simplecov', require: false
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end
