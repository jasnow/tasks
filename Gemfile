source "https://rubygems.org"

gem "rails", "7.0.4.2"

gem "sqlite3"
gem "sassc-rails"
gem "terser"
gem "jquery-rails"
gem "overcommit"
gem "webrick"

group :development do
  gem "dawnscanner", require: false
end

group :test, :development do
  gem "rspec-rails"
  # LINUX:  gem 'rb-inotify' if /linux/ =~ RUBY_PLATFORM
  gem "launchy"
  gem "capybara"
  gem "standard"
  gem "ruby_audit"
  gem "spektr"
end
