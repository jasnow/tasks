source 'https://rubygems.org'

gem 'rails', '6.0.0.beta1'

gem 'sqlite3', '1.3.13' # 2/6/2019: LOCKED DOWN
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
#LINUX:  gem 'rb-inotify' if /linux/ =~ RUBY_PLATFORM
  gem 'launchy'
  gem 'capybara'
end
