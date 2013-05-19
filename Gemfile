source 'https://rubygems.org'

gem 'rails', '3.2.11'
gem 'sqlite3'
gem 'jquery-rails'
gem "haml-rails", ">= 0.4"
gem "bootstrap-sass", ">= 2.3.0.0"
gem "figaro", ">= 0.6.3"
gem "awesome_print"
gem "squeel"
gem 'validates_timeliness', '~> 3.0'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem "html2haml", ">= 1.0.1"
  gem "quiet_assets", ">= 1.0.2"
  gem "better_errors", ">= 0.7.2"

  gem 'mysql2'
  gem "activerecord-mysql-adapter"
end

group :development,  :test do
  gem "rspec-rails", ">= 2.12.2"
  gem "factory_girl_rails", ">= 4.2.0"
end

group :test do
  gem "capybara", ">= 2.0.3"
  gem "database_cleaner", ">= 1.0.0.RC1"
  gem "email_spec", ">= 1.4.0"
end