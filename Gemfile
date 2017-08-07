source 'https://rubygems.org/'

gem 'dotenv-rails', :require => 'dotenv/rails-now'
gem 'jquery-rails'
gem 'foundation-rails'
gem 'rails', '~> 5.1.2'
gem 'pg', '0.18.1', group: :production
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker'
gem 'devise'
gem 'http'
gem 'faker', git: "git://github.com/stympy/faker.git", branch: "master"

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'sqlite3'
end

group :development, :test do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'launchy', require: false
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.5'
  gem 'valid_attribute'
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers.git', branch: 'rails-5'
end

group :production do
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

ruby "2.3.3"
