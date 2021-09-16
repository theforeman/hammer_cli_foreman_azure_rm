$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require "hammer_cli_foreman_azure_rm/version"

Gem::Specification.new do |s|
  s.name = "hammer_cli_foreman_azure_rm"
  s.authors = ["Aditi Puntambekar"]
  s.homepage = 'https://github.com/theforeman/hammer_cli_foreman_azure_rm'
  s.version = HammerCLIForemanAzureRm.version.dup
  s.license = 'GPL-3.0'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Foreman AzureRM commands for Hammer CLI'
  s.description = 'Foreman AzureRM commands for Hammer CLI.'
  s.files = Dir['{lib,config}/**/*', 'LICENSE', 'README*']
  s.require_paths = ["lib"]

  s.add_dependency 'hammer_cli_foreman', '>=0.17.0'
  s.add_development_dependency 'gettext', '>= 3.1.3', '< 4.0.0'
  s.add_development_dependency 'rake', '~> 12.3'
  s.add_development_dependency 'rubocop', '~> 0.64'
end
