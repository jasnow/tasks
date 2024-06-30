source "https://rubygems.org"

gem "rails", "7.2.0.beta2"
gem 'net-pop', github: 'ruby/net-pop' # 6/28/2024: Required for RUBY 3.3.3

gem "sqlite3", "~> 1.4"
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
  gem 'simplecov'
  gem "ruby_audit"
  gem "spektr"
end
