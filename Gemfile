# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.3.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.1.3', '>= 7.1.3.4'
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '>= 5.0'
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'
# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem 'cssbundling-rails'
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'
# An elegant, structured (X)HTML/XML templating engine.
gem 'haml', '~> 6.3'
# Set haml as default template engine.
gem 'haml-rails', '~> 2.1'
# Flexible authentication solution for Rails with Warden
gem 'devise', '~> 4.9'
# Nokogiri (鋸) makes it easy and painless to work with XML and HTML from Ruby
gem 'nokogiri', '~> 1.16', '>= 1.16.7'
# Makes http fun! Also, makes consuming restful web services dead easy.
gem 'httparty', '~> 0.22.0'
# Forms made easy!
gem 'simple_form', '~> 5.3', '>= 5.3.1'
# Simple, efficient background processing for Ruby.
gem 'sidekiq', '~> 7.3'
# A Ruby client that tries to match Redis' API one-to-one, while still providing an idiomatic interface.
gem 'redis', '~> 5.2'

# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"
# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"
# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # rspec-rails is a testing framework for Rails 5+.
  gem 'rspec-rails', '~> 6.1', '>= 6.1.3'
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri windows]
  gem 'pry-byebug', '~> 3.10', '>= 3.10.1'
  # Loads environment variables from `.env`.
  gem 'dotenv', '~> 3.1', '>= 3.1.2'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'
  # RuboCop is a Ruby code style checking and code formatting tool.
  gem 'rubocop', require: false

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
end
