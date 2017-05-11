source 'http://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# gem 'rails', '4.2.5.1'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'

gem 'friendly_id'

# BDD PostgreSQL
gem 'pg'
# Language settings
gem 'i18n'
# Bootstrap sass
gem 'bootstrap-sass', '~> 3.3.6'
# Font Awesome LESS
gem 'font-awesome-sass'
# Pagination
gem 'kaminari'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Debug access to javascript & css assets
gem 'coffee-script-source', '1.8.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Google Maps for Rails
gem 'gmaps4rails'
# Paperclip : easy file attachment management for ActiveRecord
gem "paperclip", "~> 5.0.0"
gem "aws-sdk", '~> 2.3'

# CKEditor - Web Text Editor 
gem 'ckeditor'
# JQCloud
gem "jqcloud-rails"
# Owl Carousel
gem 'owlcarousel-rails'

# Use ActiveModel has_secure_password
gem 'bcrypt', git: 'https://github.com/codahale/bcrypt-ruby.git', :require => 'bcrypt'
gem 'bcrypt-ruby', '3.1.2'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'
  # Better error page for Rack apps
  gem 'better_errors'
  gem 'binding_of_caller'
  # A ruby web server built for concurrency http://puma.io
  gem 'puma'
end

group :production do 
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
