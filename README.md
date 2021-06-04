# terraform-cosmic-instance-chef

Terraform module to provision a Cosmic instance.

<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| cosmic | >= 0.5.0 |

## Providers

| Name | Version |
|------|---------|
| cosmic | >= 0.5.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Instance name | `string` | n/a | yes |
| network\_id | Network name | `string` | n/a | yes |
| os\_type | Instance OS ("linux" or "windows") | `string` | n/a | yes |
| template | Instance template name | `string` | n/a | yes |
| affinity\_group\_ids | Host affinity group IDs | `list(string)` | `[]` | no |
| disk\_controller | Disk controller type | `string` | `null` | no |
| disk\_offering | Disk offering to default to | `string` | `null` | no |
| disks | Map of additional disks to create and attach | `map(any)` | `{}` | no |
| ip\_address | Instance IP address | `string` | `null` | no |
| root\_disk\_size | Root disk size (in GB) | `string` | `null` | no |
| service\_offering | Cosmic service offering | `string` | `null` | no |
| user\_data | Instance user data | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | Instance ID |
| ip\_address | Instance IP address |
| name | Instance name |

<!--- END_TF_DOCS --->
