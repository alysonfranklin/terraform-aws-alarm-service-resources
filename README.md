# terraform-aws-alarm-service-resources

[![tflint](https://github.com/applike/terraform-aws-alarm-service-resources/workflows/tflint/badge.svg?branch=master&event=push)](https://github.com/applike/terraform-aws-alarm-service-resources/actions?query=workflow%3Atflint+event%3Apush+branch%3Amaster)
[![tfsec](https://github.com/applike/terraform-aws-alarm-service-resources/workflows/tfsec/badge.svg?branch=master&event=push)](https://github.com/applike/terraform-aws-alarm-service-resources/actions?query=workflow%3Atfsec+event%3Apush+branch%3Amaster)
[![tfdoc](https://github.com/applike/terraform-aws-alarm-service-resources/workflows/tfdoc/badge.svg?branch=master&event=push)](https://github.com/applike/terraform-aws-alarm-service-resources/actions?query=workflow%3Atfdoc+event%3Apush+branch%3Amaster)
[![release](https://github.com/applike/terraform-aws-alarm-service-resources/workflows/release/badge.svg?branch=master&event=push)](https://github.com/applike/terraform-aws-alarm-service-resources/actions?query=workflow%3Arelease+event%3Apush+branch%3Amaster)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/applike/terraform-aws-alarm-service-resources)
[![License](https://img.shields.io/github/license/applike/terraform-aws-alarm-service-resources)](https://github.com/applike/terraform-aws-alarm-service-resources/blob/master/LICENSE)

## Example
```hcl
module "example" {
  source  = "applike/alarm-service-resources/aws"
  version = "X.X.X"
}
```
<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_short_label"></a> [short\_label](#module\_short\_label) | applike/label/aws | 1.1.0 |
| <a name="module_this"></a> [this](#module\_this) | applike/label/aws | 1.1.0 |

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_metric_alarm.average-resource-cpu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.average-resource-memory](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.maximum-resource-cpu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.maximum-resource-memory](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_tag_map"></a> [additional\_tag\_map](#input\_additional\_tag\_map) | Additional tags for appending to tags\_as\_list\_of\_maps. Not added to `tags`. | `map(string)` | `{}` | no |
| <a name="input_application"></a> [application](#input\_application) | Solution application, e.g. 'app' or 'jenkins' | `string` | `null` | no |
| <a name="input_attributes"></a> [attributes](#input\_attributes) | Additional attributes (e.g. `1`) | `list(string)` | `[]` | no |
| <a name="input_average_resource_cpu_threshold"></a> [average\_resource\_cpu\_threshold](#input\_average\_resource\_cpu\_threshold) | Average of cpu utilization to not be exceeded. Consider keeping some headroom. | `number` | `100` | no |
| <a name="input_average_resource_datapoints_to_alarm"></a> [average\_resource\_datapoints\_to\_alarm](#input\_average\_resource\_datapoints\_to\_alarm) | The number of datapoints that must be breaching to trigger the alarm | `number` | `3` | no |
| <a name="input_average_resource_evaluation_periods"></a> [average\_resource\_evaluation\_periods](#input\_average\_resource\_evaluation\_periods) | The number of periods over which data is compared to the specified threshold | `number` | `3` | no |
| <a name="input_average_resource_memory_threshold"></a> [average\_resource\_memory\_threshold](#input\_average\_resource\_memory\_threshold) | Average of memory utilization to not be exceeded. Consider keeping some headroom. | `number` | `100` | no |
| <a name="input_average_resource_period"></a> [average\_resource\_period](#input\_average\_resource\_period) | The period in seconds over which the specified statistic is applied | `number` | `300` | no |
| <a name="input_context"></a> [context](#input\_context) | Single object for setting entire context at once.<br>See description of individual variables for details.<br>Leave string and numeric variables as `null` to use default value.<br>Individual variable settings (non-null) override settings in context object,<br>except for attributes, tags, and additional\_tag\_map, which are merged. | `any` | <pre>{<br>  "additional_tag_map": {},<br>  "application": null,<br>  "attributes": [],<br>  "delimiter": null,<br>  "enabled": true,<br>  "environment": null,<br>  "family": null,<br>  "id_length_limit": null,<br>  "label_key_case": null,<br>  "label_order": [],<br>  "label_value_case": null,<br>  "project": null,<br>  "regex_replace_chars": null,<br>  "tags": {}<br>}</pre> | no |
| <a name="input_delimiter"></a> [delimiter](#input\_delimiter) | Delimiter to be used between `project`, `environment`, `family`, `application` and `attributes`.<br>Defaults to `-` (hyphen). Set to `""` to use no delimiter at all. | `string` | `null` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources | `bool` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment, e.g. 'uw2', 'us-west-2', or 'prod', 'staging', 'dev', 'UAT' | `string` | `null` | no |
| <a name="input_family"></a> [family](#input\_family) | Family, which groups your apps into business domains, e.g. 'monitoring' or 'payment' | `string` | `null` | no |
| <a name="input_id_length_limit"></a> [id\_length\_limit](#input\_id\_length\_limit) | Limit `id` to this many characters (minimum 6).<br>Set to `0` for unlimited length.<br>Set to `null` for default, which is `0`.<br>Does not affect `id_full`. | `number` | `null` | no |
| <a name="input_label_key_case"></a> [label\_key\_case](#input\_label\_key\_case) | The letter case of label keys (`tag` names) (i.e. `name`, `namespace`, `environment`, `stage`, `attributes`) to use in `tags`.<br>Possible values: `lower`, `title`, `upper`.<br>Default value: `title`. | `string` | `null` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | The naming order of the id output and Name tag.<br>Defaults to ["project", "environment", "family", "application", "attributes"].<br>You can omit any of the 5 elements, but at least one must be present. | `list(string)` | `null` | no |
| <a name="input_label_value_case"></a> [label\_value\_case](#input\_label\_value\_case) | The letter case of output label values (also used in `tags` and `id`).<br>Possible values: `lower`, `title`, `upper` and `none` (no transformation).<br>Default value: `lower`. | `string` | `null` | no |
| <a name="input_maximum_resource_cpu_threshold"></a> [maximum\_resource\_cpu\_threshold](#input\_maximum\_resource\_cpu\_threshold) | maximum of cpu utilization to not be exceeded. Consider keeping some headroom. | `number` | `150` | no |
| <a name="input_maximum_resource_datapoints_to_alarm"></a> [maximum\_resource\_datapoints\_to\_alarm](#input\_maximum\_resource\_datapoints\_to\_alarm) | The number of datapoints that must be breaching to trigger the alarm | `number` | `3` | no |
| <a name="input_maximum_resource_evaluation_periods"></a> [maximum\_resource\_evaluation\_periods](#input\_maximum\_resource\_evaluation\_periods) | The number of periods over which data is compared to the specified threshold | `number` | `10` | no |
| <a name="input_maximum_resource_memory_threshold"></a> [maximum\_resource\_memory\_threshold](#input\_maximum\_resource\_memory\_threshold) | maximum of memory utilization to not be exceeded. Consider keeping some headroom. | `number` | `150` | no |
| <a name="input_maximum_resource_period"></a> [maximum\_resource\_period](#input\_maximum\_resource\_period) | The period in seconds over which the specified statistic is applied | `number` | `60` | no |
| <a name="input_project"></a> [project](#input\_project) | Project, which could be your organization name or abbreviation, e.g. 'eg' or 'cp' | `string` | `null` | no |
| <a name="input_regex_replace_chars"></a> [regex\_replace\_chars](#input\_regex\_replace\_chars) | Regex to replace chars with empty string in `project`, `environment`, `family` and `application`.<br>If not set, `"/[^a-zA-Z0-9-]/"` is used to remove all characters other than hyphens, letters and digits. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. `map('BusinessUnit','XYZ')` | `map(string)` | `{}` | no |
| <a name="input_treat_missing_data"></a> [treat\_missing\_data](#input\_treat\_missing\_data) | What happens to the alarm if no data points are received. One of 'missing', 'ignore', 'breaching' and 'notBreaching' | `string` | `"breaching"` | no |

## Outputs

No outputs.

<!--- END_TF_DOCS --->