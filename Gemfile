source 'https://rubygems.org'
 
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.1'
# Use sqlite3 as the database for Active Record
group :production do
	gem 'pg', '~> 0.20'
end

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
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'jquery-rails'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#Gemas para subir imagenes https://github.com/carrierwaveuploader/carrierwave
gem 'carrierwave', '~> 1.0'
#End -----------------------
#Gema para poner paginacion en las publicaciones https://github.com/mislav/will_paginate 
gem 'will_paginate', '~> 3.1.0'
gem 'will_paginate-bootstrap'
#---------------------------

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap-sass', '>= 3.3.6'
gem "select2-rails"

#Datepicker para mis fechas 
gem 'momentjs-rails', '>= 2.9.0'
gem 'bootstrap3-datetimepicker-rails', '~> 4.14.30'
#Tarea programadas
gem 'whenever', :require => false
#Botones toggles
gem 'bootstrap-toggle-rails'
#Calendario
gem 'fullcalendar-rails'
gem 'faker'
gem 'simple_form'
#Exportar pdf
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary-edge'
# Login
# .--------------------------------------
# Intslamos la gema de Device para loguear a los usuarios
# Resolver problemas 'bcrypt' para device https://github.com/codahale/bcrypt-ruby/issues/149
# para versiones inferior 5
gem 'devise'
#---------------------------------------------
#Agregar gemas para form add and delet en forma dinamica 
gem 'nested_form_fields'
#.-----------------------

