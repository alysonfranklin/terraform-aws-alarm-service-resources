# terraform-modules-template

[![tflint](https://github.com/applike/terraform-modules-template/workflows/tflint/badge.svg?branch=master&event=push)](https://github.com/applike/terraform-modules-template/actions?query=workflow%3Atflint+event%3Apush+branch%3Amaster)
[![tfsec](https://github.com/applike/terraform-modules-template/workflows/tfsec/badge.svg?branch=master&event=push)](https://github.com/applike/terraform-modules-template/actions?query=workflow%3Atfsec+event%3Apush+branch%3Amaster)
[![tfdoc](https://github.com/applike/terraform-modules-template/workflows/tfdoc/badge.svg?branch=master&event=push)](https://github.com/applike/terraform-modules-template/actions?query=workflow%3Atfdoc+event%3Apush+branch%3Amaster)
[![release](https://github.com/applike/terraform-modules-template/workflows/release/badge.svg?branch=master&event=push)](https://github.com/applike/terraform-modules-template/actions?query=workflow%3Arelease+event%3Apush+branch%3Amaster)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/applike/terraform-modules-template)
[![License](https://img.shields.io/github/license/applike/terraform-modules-template)](https://github.com/applike/terraform-modules-template/blob/master/LICENSE)

## Example
```hcl
module "example" {
  source  = "applike/example/aws"
  version = "X.X.X"
}
```
<!--- BEGIN_TF_DOCS --->
<!--- END_TF_DOCS --->