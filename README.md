# hammer_cli_foreman_azure_rm

## Description
CLI tool for AzureRM compute resource in Foreman [foreman_azure_rm](https://github.com/theforeman/foreman_azure_rm)

## Compute Resource Creation

```
hammer compute-resource create --name cli_azure_cr --provider azurerm --tenant <tenant-id> --app-ident <client-id> --secret-key <client-secret> --sub-id <subscription-id> --region "eastus"
```

Please note that the region value must be provided in **lowercase**.

## Host Creation

```
hammer host create --compute-resource-id 7 --compute-attributes="resource_group=aditi-rg,vm_size=Standard_B1s,username=myuser,password=mypassword,platform=Linux,image_id=OpenLogic:CentOS:7.5:latest" --interface="compute_public_ip=Dynamic,compute_network=mysubnetID,compute_private_ip=false" --name="test-host-cli" --location-id 1 --organization-id 2 --domain-id 2 --architecture-id 1 --operatingsystem-id 1
```

## Compute Profile Creation

```
hammer compute-profile create --name cli_cp
```

## Compute Profile Attributes Creation

```
hammer compute-profile values create --compute-attributes="resource_group=aditi-rg,vm_size=Standard_B1s,username=myuser,password=mypassword,platform=Linux,image_id=OpenLogic:CentOS:7.5:latest" --interface="compute_public_ip=Dynamic,compute_network=mysubnetID,compute_private_ip=false" --compute-profile "cli_cp" --compute-resource-id 7 --location-id 1 --organization-id 2
```

## Host Creation with Compute Profile

```
host create --compute-resource-id 7 --compute-profile "cli_cp" --name="test-host-cli-cp" --location-id 1 --organization-id 2 --domain-id 2 --architecture-id 1 --operatingsystem-id 1
```
