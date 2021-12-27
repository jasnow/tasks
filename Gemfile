source 'https://rubygems.org'

#gem 'rails', '7.0.0'
gem "rails", github: "rails/rails", branch: "7-0-stable"

gem 'sqlite3'
gem 'sassc-rails'
gem 'terser'
gem 'jquery-rails'
gem 'overcommit'
gem 'net-smtp' # Added for Ruby 3.1.
 
group :development do
  gem 'dawnscanner', require: false
end

group :test, :development do
  gem 'rspec-rails'
#LINUX:  gem 'rb-inotify' if /linux/ =~ RUBY_PLATFORM
  gem 'launchy'
  gem 'capybara'
end
