source 'https://rubygems.org'
ruby '2.1.5'

gem 'rails', '4.1.8'

gem 'coffee-rails', '~> 4.0.0'
gem 'sass-rails', '~> 4.0.3'
gem 'compass-rails'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'uglifier', '>= 1.3.0'
gem 'autoprefixer-rails'

gem 'devise'
gem 'devise_invitable'
gem 'pundit'

gem 'unicorn'
gem 'unicorn-rails'
#gem 'flipclockjs-rails', '~> 0.5.5b.1'
gem 'mandrill-api', require: 'mandrill'
gem 'dotenv-rails'

group :doc do
  gem 'sdoc', '~> 0.4.0'
end

group :production do
  gem 'pg'
end

group :development do
  gem 'capistrano'
  gem 'capistrano-unicorn-nginx'
  gem 'capistrano-safe-deploy-to'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'

  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'spring'
end

group :development, :test do
  gem 'sqlite3'
end
