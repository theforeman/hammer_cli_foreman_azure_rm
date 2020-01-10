require 'hammer_cli_foreman/compute_resource/base'

module HammerCLIForemanAzureRm
  module ComputeResources
    class AzureRm < HammerCLIForeman::ComputeResources::Base
      def name
        _('AzureRM')
      end

      def compute_attributes
        [
          ['resource_group', _('Existing Azure Resource Group of user')],
          ['vm_size', _('VM Size, eg. Standard_A0 etc.')],
          ['username', _('The Admin username')],
          ['password', _('The Admin password')],
          ['platform', _('OS type eg. Linux')],
          ['ssh_key_data', _('SSH key for passwordless authentication')],
          ['os_disk_caching', _('OS disk caching')],
          ['premium_os_disk', _('Premium OS Disk, Boolean as 0 or 1')],
          ['script_command', _('Custom Script Command')],
          ['script_uris', _('Comma seperated file URIs')]
        ]
      end

      def interface_attributes
        [
          ['compute_network',    _('Select one of available Azure Subnets, must be an ID')],
          ['compute_public_ip',  _('Public IP (None, Static, Dynamic)')],
          ['compute_private_ip', _('Static Private IP (expressed as true or false)')]
        ]
      end

      def provider_specific_fields
        [
            Fields::Field.new(:label => _('tenant'), :path => [:tenant]),
            Fields::Field.new(:label => _('app_ident'), :path => [:app_ident]),
            Fields::Field.new(:label => _('sub_id'), :path => [:sub_id]),
            Fields::Field.new(:label => _('region'), :path => [:region])
        ]
      end

      def mandatory_resource_options
        super + %i[tenant app_ident secret_key sub_id region]
      end
    end
  end
end
