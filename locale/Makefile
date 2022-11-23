DOMAIN = hammer-cli-foreman-azure-rm
VERSION = $(shell bundle exec ruby -C ../ -e 'require "rubygems"; puts Gem::Specification::load("hammer_cli_foreman_azure_rm.gemspec").version')
MAIN_MAKEFILE = $(shell bundle exec ruby -C ../ -e 'require "hammer_cli"; puts HammerCLI::I18n.main_makefile')

include $(MAIN_MAKEFILE)

