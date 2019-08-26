require 'hammer_cli_foreman/compute_resource/base'

module HammerCLIForemanAzureRM
  module ComputeResources
    class AzureRM < HammerCLIForeman::ComputeResources::Base
      def name
        _('AzureRM')
      end

      def provider_specific_fields
        [
            Fields::Field.new(:label => _('tenant'), :path => [:tenant]),
            Fields::Field.new(:label => _('app_ident'), :path => [:app_ident]),
            Fields::Field.new(:label => _('secret_key'), :path => [:secret_key]),
            Fields::Field.new(:label => _('sub_id'), :path => [:sub_id]),
        ]
      end

      def mandatory_resource_options
        super + %i[tenant app_ident secret_key sub_id]
      end
    end
  end
end