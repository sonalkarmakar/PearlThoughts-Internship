# Introduction
## Infrastructure as Code
Infrastructure as Code is the practice of ***provisioning and managing infrastructure***, like *servers*, *networks*, *databases*, etc. by **defining their configuration as _machine-readable code_**, instead of *manually configuring* it or through *interactive interfaces* like terminals and consoles.

Key points--
- Infrastructure configurations are defined in config/code files.
- Code can be stored, reused, and version-controlled for rebuilding identical infrastructure quickly, sometimes even in different environments.
### Why we need IaC
- ***Consistency***: replicate identical set of infrastructures with identical configuration with no deviation.
- ***Scalability***: easily scale infrastructure up or down as needed, by making changes in the config files and applying them.
- ***Automation***: speed up the process of creating servers, networks, databases, etc. in a new environment through automated configuration.
- ***Version Control***: the config files can be used with version control to maintain or move to different versions of the same infrastructure's configuration.
- ***Reduced Errors***: reliably configure and provision resources with lower risk of human errors.
### IaC tools
IaC tools help administrators quickly provision and manage infrastructures in different environments. Examples of such tools are--
- **Ansible**: open-source automation tool that uses YAML playbooks.
- **AWS CloudFormation**: AWS' native IaC service for defining and configuring AWS resources using JSON/YAML files.
- **Azure Resource Manager**: Microsoft Azure's native IaC solution for defining and managing Azure resources using domain-specific language called Bicep.
- **Progress Chef**: automation platform and configuration management tool, formerly known as Chef.
- **Puppet**: configuration management and IaC tool that uses its own DSL.
- **Terraform**: multi-cloud declarative IaC tool developed by HashiCorp.
## Terraform
> [**HashiCorp | What is Terraform?**](https://developer.hashicorp.com/terraform/intro)
> HashiCorp Terraform is an **infrastructure as code tool** that lets you define both **_cloud_ and _on-prem_ resources** in **human-readable configuration files** that you can *version*, *reuse*, and *share*.

Terraform is an IaC tool developed by HashiCorp, where infrastructure is defined as written code that is read by the tool to automatically create them or apply changes.

> [**How does Terraform work?**](https://developer.hashicorp.com/terraform/intro)
The core Terraform workflow consists of three stages:
> - **Write:** You define resources, which may be across multiple cloud providers and services. For example, you might create a configuration to deploy an application on virtual machines in a Virtual > Private Cloud (VPC) network with security groups and a load balancer.
> - **Plan:** Terraform creates an execution plan describing the infrastructure it will create, update, or destroy based on the existing infrastructure and your configuration.
> - **Apply:** On approval, Terraform performs the proposed operations in the correct order, respecting any resource dependencies. For example, if you update the properties of a VPC and change the number of virtual machines in that VPC, Terraform will recreate the VPC before scaling the virtual machines.

# Features
- **<ins>Declarative approach</ins>**: Infrastructure is defined in **declarative** and human-readable **configuration files** using *HashiCorp Configuration Language (HCL)*, allowing replication, versioning and reviewing.
- **<ins>Multi-cloud support</ins>**: Terraform works **on and across multiple cloud-providers** like AWS, Microsoft Azure, GCP, Oracle etc., enabling managing resources **spread across _multiple platforms_**.
- **<ins>State management</ins>**: Resources are tracked through **state files**, which are used as a *source of truth* for current status and computing changes.
- **<ins>Execution plan</ins>**: An execution plan is generated for previewing creation/modification/deletion actions to apply changes safely and predictably.
- **<ins>Modular and Reusable</ins>**: Modules allow packaging common infrastructure patterns into reusable blocks that can be shared and versioned to standardise deployments.
- **<ins>Source available</ins>**: Source code of Terraform is available to the public but commercial use requires a separate version, under the Business Source License.

# Architecture
The architecture of Terraform has the following components--
1. Terraform Core
2. Configuration files
3. Providers
4. State Management
5. Execution Workflow
6. Dependency Graph
7. Backends
## Terraform Core
- Terraform Core is the **central engine** of Terraform.
- It's a **compiled CLI binary** that is used from the terminal.
- It's **cloud-agnostic** and uses ***Providers*** to handle interactions with external systems.
- It's responsible for the following--
	- Parsing configuration files written in HCL.
	- Loading and managing state.
	- Building a dependency graph of all resources.
	- Planning what changes are needed.
	- Co-ordinating execution of those changes.
## Configuration files
- File containing the **infrastructure definition** written in HashiCorp Configuration Language (HCL).
- Contains only the **description of what is needed**, but **_not_ how to create it**.
- Terraform reads these files to create *internal representation* of "***desired state***".
- Files have the extension "**`.tf`**".
## Providers
- Providers are **plugins** that translate infrastructure definitions to **platform-specific API calls**.
- Providers expose resource types and connect Terraform Core to the APIs.
- Terraform installs and configures the required *provider binaries* **during initiation**; they *aren't hard-coded*.
## State Management
- Terraform uses **state files** to record the the status of the infrastructures it manages.
- ***State files are crucial and critical.*** Loss or corruption can make Terraform's actions unsafe.
- State files do the following--
	- Map configuration to existing resources and their IDs.
	- Inform Terraform of existing resources.
	- Help compute minimal changes required to meet desired state.
- State files can be stored locally or in cloud for team collaboration.
## Dependency Graph
Terraform builds a dependency graph that's central to planning and execution, because it--
- Determines order of operations.
- Ensures correct evaluation  and execution of dependencies.
- Optimise parallel operations where possible.
## Backends
Backends control where **Terraform stores its state**.
- **Local backend**: stores state in the local file-systems.
- **Remote backend**: stores states in the storage services like AWS S3, Azure Blob, Terraform Cloud, etc. for team collaboration, with locking support to prevent conflicts.

# Life-Cycle
The life-cycle of a typical Terraform execution follows a multi-step workflow consisting of 4 main stages--
## (1) Initialise
- Initialises the working directory, installs provider plugins, and configures the state backend.
- Command: `terraform init`
## (2) Plan
- **Core builds a dependency graph** of resources (a DAG) and compares current state with desired state to produce an **execution plan** — a safe preview of actions Terraform will take.
- Command: `terraform plan`
## (3) Apply
- Executes that plan in the correct order (respecting dependencies), calls provider APIs to create/update/delete resources, and updates state accordingly.
- Command: `terraform apply`
	- Approve all when applying: `terraform apply -auto-approve`
## (4) Apply
- Removes everything managed by your configuration when you want to tear down infrastructure.
- Command: `terraform destroy`
	- Approve all deletion: `terraform destroy -auto-approve`

# References
- [AWS | What is Infrastructure as Code?](https://aws.amazon.com/what-is/iac/)
- [GitHub | What is IaC (Infrastructure as Code)?](https://github.com/resources/articles/what-is-infrastructure-as-code)
- [HashiCorp | What is infrastructure as code and why is it important?](https://www.hashicorp.com/en/resources/what-is-infrastructure-as-code)
- [HashiCorp | Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
- [RedHat | What is Infrastructure as Code (IaC)?](https://www.redhat.com/en/topics/automation/what-is-infrastructure-as-code-iac)
- [Terraform Registry | AWS Provider | Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
