# hammer_cli_foreman_azure_rm

## Description
CLI tool for AzureRM compute resource in Foreman [foreman_azure_rm](https://github.com/theforeman/foreman_azure_rm)

## Installation

### Package
```
# yum install tfm-rubygem-hammer_cli_foreman_azure_rm
```

### Foreman Installer
```
# foreman-installer --enable-foreman-cli-azure
# hammer -r
```
Please note that **hammer -r** will reload Apipie cache so that command options for azurerm compute resource will get loaded.

### Development Setup

Clone the repo from github:
```bash
git clone https://github.com/theforeman/hammer_cli_foreman_azure_rm.git
```

Edit `~/.hammer/cli.modules.d/foreman_azure_rm.yml` and enter in the following:
```yaml
:foreman_azure_rm:
  :enable_module: true
```

## Compute Resource Creation

```
hammer compute-resource create --name cli_azure_cr --provider azurerm --tenant <tenant-id> --app-ident <client-id> --secret-key <client-secret> --sub-id <subscription-id> --region <region>
```

Please note that the region value must be provided in **lowercase**.

## List available networks
```
hammer compute-resource networks --id <compute-resource-id>
```

Please copy the subnet ID from this list to be passed to `compute_network` attribute during Host creation.

## Host Creation

```
hammer host create --compute-resource-id 7 --compute-attributes="resource_group=test-rg,vm_size=Standard_B1s,username=myuser,password=mypassword,platform=Linux,script_command=date" --interface="compute_public_ip=Dynamic,compute_network=mysubnetID,compute_private_ip=false" --name="test-host-cli" --location-id 1 --organization-id 2 --domain-id 2 --architecture-id 1 --operatingsystem-id 1 --image-id 1
```

## Compute Profile Creation

```
hammer compute-profile create --name cli_cp
```

## Compute Profile Attributes Creation

```
hammer compute-profile values create --compute-attributes="resource_group=aditi-rg,vm_size=Standard_B1s,username=myuser,password=mypassword,platform=Linux" --interface="compute_public_ip=Dynamic,compute_network=mysubnetID,compute_private_ip=false" --compute-profile "cli_cp" --compute-resource-id 7 --location-id 1 --organization-id 2
```

## Host Creation with Compute Profile

```
host create --compute-resource-id 7 --compute-profile "cli_cp" --name="test-host-cli-cp" --location-id 1 --organization-id 2 --domain-id 2 --architecture-id 1 --operatingsystem-id 1 --image-id 1
```
