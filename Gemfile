source 'https://rubygems.org'

ruby '2.1.1'

gem 'rails', '4.1.0.rc1'

gem 'sqlite3'

group :assets do
  gem 'sass-rails', :require => 'sass'
  gem 'coffee-rails', :require => 'coffee_script'

  gem 'uglifier'
end

gem 'jquery-rails'

group :test, :development do
#  gem 'turn'
  gem 'rspec-rails', '3.0.0.beta1'
  gem 'capybara'
  gem 'rb-inotify' if /linux/ =~ RUBY_PLATFORM
  gem 'launchy'
end

group :development do
  gem 'codesake-dawn', :require => false
end
