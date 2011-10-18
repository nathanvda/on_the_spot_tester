source 'http://rubygems.org'

gem 'rails', '>= 3.0.0'

gem 'therubyracer'

gem 'sqlite3-ruby', :require => 'sqlite3'

gem 'rails3-generators'

gem "bson_ext"
gem "haml"
gem "haml-rails"
gem "jquery-rails"

gem "rcov"

gem "on_the_spot", ">=0.0.5"                                                         # use latest gem
#gem "on_the_spot", ;git => "git://github.com/nathanvda/on_the_spot.git"   # use gem from github
#gem "on_the_spot", ">= 0.0.0.beta1", :path => "../on_the_spot"             # for local testing

# we need this here, see http://blog.davidchelimsky.net/2010/07/11/rspec-rails-2-generators-and-rake-tasks/
group :development, :test do
  gem "rspec-rails", ">= 2.0.0"
end

# test-environment gems
group :test, :spec, :cucumber do
  gem "factory_girl_rails"
  gem "rspec",                   ">= 2.0.0"
  gem "remarkable",              ">=4.0.0.alpha2"
  gem "remarkable_activemodel",  ">=4.0.0.alpha2"
  gem "remarkable_activerecord", ">=4.0.0.alpha2"
  gem "capybara"
  gem "cucumber"
  gem "database_cleaner"
  gem "cucumber-rails"
end

