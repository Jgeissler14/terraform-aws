# Terraform AWS Repository

This repository contains an example root module for provisioning basic AWS resources using Terraform. The root module calls other modules to create different AWS resources, showcasing how modules can be used to organize and manage infrastructure code effectively.

## Branch and Trunk-based Development

We follow a branch and trunk-based development approach in this repository. The main branch represents the stable production-ready code. Feature branches are created for each new feature or enhancement, and pull requests are made to merge them into the main branch after thorough testing.

## Folder Structure

The repository follows the following folder structure:

- `terraform/modules/`: This directory contains the reusable modules for creating specific AWS resources. Each module is organized in its own subdirectory and has its own `README.md` file with detailed instructions and configuration options.

- `terraform/environments/`: This directory contains environment-specific configurations and Terraform code. The `example` directory under `environments` demonstrates an example environment configuration. You can create additional directories under `environments` for different environments (e.g., `dev`, `staging`, `production`) and customize the Terraform code accordingly.

## Prerequisites

Before you begin, ensure that you have the following:

- [Terraform](https://www.terraform.io/downloads.html) installed locally.
- AWS credentials set up with appropriate permissions to create and manage resources.

## Variable Changes and Updates for Terraform Cloud

If you want to use [Terraform Cloud](https://www.terraform.io/cloud) to manage and store your variables securely, follow these steps:

1. Sign up for an account on [Terraform Cloud](https://www.terraform.io/cloud).

2. Create an organization and a workspace in Terraform Cloud.

3. In your workspace, navigate to the "Variables" tab.

4. Update the values of variables according to your needs. You can create variables to match the ones defined in the `variables.tf` file.

   - For sensitive data, you can mark the variable as sensitive in Terraform Cloud to ensure it is not displayed in logs or exposed in any way.

5. In the root module's `provider.tf` file, update the `cloud` block to include the Terraform Cloud organization and workspace information


## Usage

```
gh repo clone jgeissler14/terraform-aws

cd terraform-aws/terraform/environments/example

terraform init

terraform plan

terraform apply

```

## Contributing
If you find any issues with the code or have suggestions for improvements, please open an issue or submit a pull request. Contributions are welcome!

## Custom Builds
Need help with Terraform implementation or custom builds? Visit us at [geisslersolutions.com](https://geisslersolutions.com) for more information.
