source 'https://rubygems.org'

gem 'rails', '4.2.5.rc1'

gem 'sqlite3'
gem 'sass'
gem 'coffee-script'
gem 'uglifier'
gem 'jquery-rails'
gem 'overcommit'

group :development do
  gem 'dawnscanner', require: false
end

group :test, :development do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'rb-inotify' if /linux/ =~ RUBY_PLATFORM
  gem 'launchy'
end
