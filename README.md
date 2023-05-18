# Terraform AWS Resource Import

This repository provides Terraform configurations for importing existing AWS resources into your Terraform state.

## EC2 Import

The `main.tf` file contains the configuration for importing an existing EC2 instance. The EC2 instance will be identified by its instance ID.

To import the EC2 instance, follow these steps:

1. Make sure you have Terraform installed and configured with appropriate AWS credentials.
2. Modify the `main.tf` file, specifically the region, access key, secret key, and instance ID.
3. Run `terraform init` to initialize the Terraform configuration.
4. Run `terraform import aws_instance.ec2_instance <instance_id>` to import the EC2 instance into your Terraform state.

## Security Group Import

The `sg.tf` file contains the configuration for importing a standalone security group into your Terraform state. This security group can be used independently or associated with other resources.

To import the security group, follow these steps:

1. Make sure you have Terraform installed and configured with appropriate AWS credentials.
2. Modify the `SG.tf` file, specifically the region, access key, secret key, and security group ID.
3. Run `terraform init` to initialize the Terraform configuration.
4. Run `terraform import aws_security_group.standalone_sg <security_group_id>` to import the security group into your Terraform state.

Please exercise caution when importing resources and ensure they align with your existing infrastructure. Review and verify the imported resources before making any changes.

Note: Ensure that you handle your AWS access and secret keys securely and do not expose them in public repositories.
