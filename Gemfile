source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 6.1.7', '>= 6.1.7.3'
gem 'sqlite3'
gem 'puma', '~> 4.3', '>= 4.3.12'
gem 'sass-rails', '~> 6.0', '>= 6.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2', '>= 4.2.2'
gem 'therubyracer'
gem 'less-rails', '>= 4.0.0'
gem 'foundation-rails'
gem 'omniauth-facebook'
gem 'devise', '>= 4.7.1'
gem 'simple_form', '>= 5.0.0'
gem 'modernizr-rails'
gem 'jquery-rails', '>= 4.4.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.18', '>= 2.18.0'
  gem 'selenium-webdriver'
  gem 'rspec-rails'
  gem 'pry'
end

group :test do
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen', '>= 3.1.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.1'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
