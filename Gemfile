source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.0.2'
gem 'uglifier', '~> 2.4.0'
gem 'coffee-rails', '~> 4.0.1'
gem 'jquery-rails', '~> 3.0.4'
gem 'turbolinks', '~> 2.1.0'
gem 'jbuilder', '~> 1.5.3'
gem 'bcrypt-ruby', '~> 3.1.2'

# Devise
gem 'devise', '~> 3.2.2'

gem 'will_paginate',         '~> 3.0'
# GUI
gem 'sass-rails', '~> 4.0.1'
gem 'font-awesome-sass', '~> 4.0'
gem 'bootstrap-sass', '~> 3.1'
gem 'simple_form'
gem 'haml-rails'

gem "exception_notification", "~> 4.0.1"
gem 'capistrano'
gem 'capistrano-ext'


gem 'coveralls', :require => false

# production gems for heroku
group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'thin'
  #better debugging
  #http://railscasts.com/episodes/402-better-errors-railspanel
  gem "better_errors"               #https://github.com/charliesome/better_errors
  gem 'binding_of_caller'
  gem 'rack-mini-profiler'          #http://railscasts.com/episodes/368-miniprofiler
  gem 'bullet'
end

group :development, :test do
  gem 'mysql2'
  gem 'figaro', '~> 0.7.0'     # env variables
  gem 'faker'
  gem 'rails_layout', '~> 0.5.11'  # Bootstrap 3 layout generator
  gem "quiet_assets",               '>= 1.0.1' #Quiet assets turn off rails assets log.
  gem 'g',                          :git => 'https://github.com/stereosupersonic/g'
  gem 'rspec-rails'
  gem 'factory_girl_rails',         '~> 4.2.1'
  gem 'growl'
  gem 'ci_reporter'
  gem 'spork'
  gem 'annotate',                    '>=2.6.0'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'guard-livereload'
  gem 'guard-spork'
end

# Capybara
group :test do
  gem "capybara"
  gem 'capybara-webkit'
  gem "poltergeist"
  gem 'database_cleaner'
  gem 'launchy'                     #for capybara save_and_open_page
  gem 'simplecov'
  gem 'shoulda-matchers'
  gem "spork-rails"
  gem 'fakeweb'
end
