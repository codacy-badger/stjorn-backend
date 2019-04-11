# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'

gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'graphql', '~> 1.9', '>= 1.9.4'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.2', '>= 5.2.2.1'
# gem 'rack-cors'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner', '~> 1.7'
  gem 'factory_bot_rails', '~> 5.0', '>= 5.0.1'
  gem 'faker', '~> 1.9', '>= 1.9.3'
  gem 'shoulda-matchers', '~> 4.0', '>= 4.0.1'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
