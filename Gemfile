source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.2.4.2' #this was the original version of rails 4.2.4'
# Use mysql as the database for Active Record
# devise gem
gem 'devise', '>= 4.4.2'
gem 'bootstrap-sass', '~> 3.3.5', '>= 3.3.5.1'
gem 'autoprefixer-rails', '>= 6.0.3'
gem 'simple_form', '>= 4.0.0'
gem "paperclip", "~> 4.3", ">= 4.3.1"
gem 'masonry-rails', '>= 0.2.4'
gem 'jquery-turbolinks', '>= 2.1.0'
gem 'acts_as_votable', '~> 0.10.0'


#gem 'mysql2', '~> 0.3.18'
group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development, :test do
    gem 'mysql2', '~> 0.3.18'
end

gem 'heroku'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0', '>= 5.0.5'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 2.7.2'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem "nokogiri", ">= 1.6.7.rc"
# Use jquery as the JavaScript library
gem 'jquery-rails', '>= 4.0.5'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '>= 2.5.3'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.3', '>= 2.3.2'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 1.0.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

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
  gem 'web-console', '~> 2.2', '>= 2.2.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
