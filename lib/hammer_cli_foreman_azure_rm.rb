module HammerCLIForemanAzureRM
  require 'hammer_cli_foreman_azure_rm/compute_resources/azure_rm'
  require 'hammer_cli_foreman/compute_resource/register_compute_resources'

  HammerCLIForeman.register_compute_resource('azurerm', HammerCLIForemanAzureRM::ComputeResources::AzureRM.new)
end