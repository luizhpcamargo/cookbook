source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 7.1.0'
gem 'sqlite3'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0', '>= 5.0.8'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 5.0', '>= 5.0.0'
gem 'therubyracer'
gem 'less-rails', '>= 4.0.0'
gem 'foundation-rails', '>= 6.4.3.0'
gem 'omniauth-facebook'
gem 'devise', '>= 4.7.0'
gem 'simple_form', '>= 4.0.0'
gem 'modernizr-rails'
gem 'jquery-rails', '>= 4.2.2'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'rspec-rails', '>= 3.8.0'
  gem 'pry'
end

group :test do
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.1.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
