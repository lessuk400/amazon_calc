# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

gem 'rails',      '~> 5.2.1'
gem 'sqlite3'
gem 'puma',       '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier',   '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'haml-rails', '~> 1.0'
gem 'bootsnap',   '>= 1.1.0', require: false

group :development, :test do
  gem 'pry-rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
