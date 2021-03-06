source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.5'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
gem 'mysql2'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'slim-rails'
gem 'devise'
gem 'twitter'
gem 'oauth'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'friendly_id'
group :development, :test do
  gem 'rspec-rails'
end

group :development do
  gem 'spring-commands-rspec'
end

group :test do
  gem 'factory_girl'
end

group :test do
  gem 'capybara'
end

gem 'simple_form'
group :development do
  gem 'binding_of_caller'
end

group :development do
  gem 'better_errors'
end

gem 'inherited_resources', github: 'josevalim/inherited_resources'
group :development do
  gem 'rubocop'
end

group :test do
  gem 'simplecov'
end

group :test do
  gem 'simplecov-rcov'
end

gem 'rollbar'
group :development do
  gem 'dotenv-rails'
end

gem 'bootstrap'
gem 'font-awesome-rails'
gem 'jquery-rails'

group :development do
  gem 'bootstrap-generators'
end

gem 'seed-fu'

# ファイルアップロード
gem "carrierwave"
gem 'carrierwave-ftp', :require => 'carrierwave/storage/sftp' # SFTP only
gem "mini_magick"

gem 'config'

# sessionをDBに変更
gem 'activerecord-session_store'

# 検索
gem 'ransack'
# ページネーション
gem 'kaminari'

gem 'active_hash'

# BULK INSERT
gem 'activerecord-import'
