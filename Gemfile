source 'https://rubygems.org'
ruby '2.1.1'
# Distribute your app as a gem
# gemspec

# Server requirements
# gem 'thin' # or mongrel
# gem 'trinidad', :platform => 'jruby'

# Optional JSON codec (faster performance)
# gem 'oj'

# Project requirements
gem 'rake'

# Component requirements
gem 'erubis', '~> 2.7.0'
gem 'activerecord', '>= 3.1', :require => 'active_record'
gem 'sqlite3'


# Test requirements
group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'cucumber'
  gem 'rack-test', :require => 'rack/test'
  gem 'database_cleaner'
  gem 'factory_girl'
  gem 'shoulda-matchers'
  gem 'launchy'
  gem 'faker'
end

gem 'pry-byebug'

# Padrino Stable Gem
gem 'padrino', '0.12.1'

# Or Padrino Edge
# gem 'padrino', :github => 'padrino/padrino-framework'

# Or Individual Gems
# %w(core support gen helpers cache mailer admin).each do |g|
#   gem 'padrino-' + g, '0.12.1'
# end
