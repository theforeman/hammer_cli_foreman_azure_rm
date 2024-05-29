# frozen_string_literal: true

require 'hammer_cli_foreman_azure_rm/version'
require 'hammer_cli_foreman_azure_rm/i18n'
require 'hammer_cli/i18n/find_task'
HammerCLI::I18n::FindTask.define(HammerCLIForemanAzureRm::I18n::LocaleDomain.new,
  HammerCLIForemanAzureRm.version)

begin
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new

  desc 'Runs Rubocop style checker with xml output for Jenkins'
  task 'rubocop:jenkins' => :environment do
    system("bundle exec rubocop \
            --require rubocop/formatter/checkstyle_formatter \
            --format Rubocop::Formatter::CheckstyleFormatter \
            --no-color --out rubocop.xml")
  end
rescue StandardError => _e
  puts 'Rubocop not loaded.'
end

task :default do
  Rake::Task['rubocop'].execute
end
