source 'https://rubygems.org'
dev_gemfile = File.expand_path('Gemfile.dev.rb', __dir__)
eval_gemfile(dev_gemfile) if File.exist?(dev_gemfile)
gemspec

group :test do
  gem 'rake', '~> 13.0'
  gem 'rubocop', '0.42'
  gem 'rubocop-checkstyle_formatter'
end
