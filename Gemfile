# source 'https://rubygems.org'
source 'https://gems.ruby-china.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.5'
# Use sqlite3 as the database for Active Record

# Use Puma as the app server
gem 'puma', '~> 3.0'
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
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
gem 'bootstrap-sass'
gem 'simple_form'
gem 'devise'
gem 'faker'
gem 'will_paginate'
gem 'will_paginate-bootstrap'
gem 'font-awesome-rails'
gem 'carrierwave'
gem 'ransack'
gem 'seo_helper', '~>1.0'
gem 'rails-i18n'
gem 'select2-rails'
gem 'mini_magick'
gem 'rename'
gem 'carrierwave-qiniu', '~> 1.1.5'

# gem 'qiniu-rs'
gem 'figaro'
gem 'social-share-button'
gem 'ckeditor'
gem 'china_city'
gem 'bootstrap-datepicker-rails'
gem 'mysql2'
gem 'capistrano-sidekiq'
gem 'listen', '~> 3.0.5' # remove listen from development to global
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'capistrano-rails'
  gem 'capistrano-passenger'
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'factory_bot'
  gem 'capybara'
  gem 'database_rewinder'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'sqlite3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# group :production do
#   gem 'pg'
# end
