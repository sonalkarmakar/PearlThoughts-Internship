# Introduction
## What is AWS?
- **AWS (Amazon Web Services)** is a cloud computing platform that offers a broad set of IT resources like computing, storage, databases, analytics, machine learning, and more in a virtual format over the internet.
- It enables companies of all sizes to access these services over the internet on a *pay-as-you-go* pricing model, eliminating the need for upfront capital expenditure or on-premises infrastructure management.
## Advantages of Using AWS
### Advantages of a Cloud Platform
- **Cost Savings**: Pay-as-you-go pricing with no upfront expenses or long-term commitments.
- **Agility**: Quickly provision resources, deploy applications, and scale instantly based on demand. Launch hundreds or thousands of servers in minutes instead of waiting weeks.
- **Elasticity**: Scale up or down automatically based on actual needs rather than over-provisioning for peak capacity, optimising costs.
- **Security**: AWS has numerous features in physical and virtual security, including encryption, audit trails, security-by-design, and comprehensive monitoring.
- **Reliability**: Create fault-tolerant, highly available infrastructure built to enterprise standards.
- **Innovation Focus**: IT staff is freed from infrastructure management to focus on developing applications and other high-value activities.
- **Flexibility**: Choice of various programming languages, operating systems, and services that best fit your needs.
### Advantages of AWS over other Cloud Platforms
Being one of the *earliest cloud services* in the market, AWS has evolved to offer several key advantages that differentiate it from other cloud platforms--
- **Broadest and Deepest Platform**: AWS provides the most extensive selection of services with the deepest functionality compared to other cloud providers, offering choice of processors, storage, networking, operating systems, and purchase models.
- **World-Class Network**: AWS is the only cloud provider with compute instances delivering 400 Gbps networking and has the largest global network with 210 points of presence connected by 100 Gbps trans-oceanic cables.
- **Industry-Leading Security**: AWS supports 89 security standards and compliance certifications (PCI-DSS, HIPAA, FedRAMP, GDPR, etc.), more than any other cloud provider.
- **Flexible Cost Optimisation**: Pay only for what you use with no long-term commitments. Amazon EC2 Spot can reduce costs by up to 90% for fault-tolerant workloads.
- **Largest Marketplace**: AWS Marketplace is the largest and most full-featured digital marketplace for third-party cloud software according to Gartner's 2023 analysis.
- **Proven Leadership**: AWS is recognised as "the clear market leader among public clouds" by The Futurum Group, largely due to its cutting-edge infrastructure and extensive experience.

# AWS Global Infrastructure
The infrastructure that enables AWS to provide it's services world-wide, are comprised of the following main components--
- Availability Zones
- Regions
- Edge Locations
- Regional Edge Cache
## Availability Zones
Availability Zones (AZs) are one or more discrete data centres with redundant power, networking, and connectivity within an AWS Region.

Despite geographic separation, AZs within a Region are connected via high-bandwidth, low-latency networking that enables synchronous data replication.

Key characteristics of Availability Zones are as follows--
- Physically separated from other zones (up to 60 miles/100 km apart)
- Designed to avoid correlated failures (fires, floods, tornadoes, etc.)
- Independent physical infrastructure with:
    - Dedicated power connections
    - Standalone backup power
    - Independent mechanical services
    - Separate network connectivity
## Regions
Regions are isolated physical geographical areas where a cluster of Availability Zones are present. Each Region:
- Is completely isolated from other Regions
- Contains multiple Availability Zones (AZs)
- Operates with local market conditions (affecting pricing)
- Has its own independent infrastructure

Key characteristics of AWS Regions are as follows--
- Resources created in one Region don't exist in others unless explicitly replicated
- You can select Regions based on:
    - Proximity to end users (reducing latency)
    - Data regulatory requirements
    - Cost considerations
    - Service availability
## Edge Locations
AWS Edge Locations are data centres strategically positioned worldwide that form the Amazon Global Edge Network. They serve several key purposes:
- Deliver content with lower latency.
- Provide entry points to the AWS global network.
- Reduce data transfer amounts.
- Respond to real-time requirements.
- Supporting various edge use cases ranging from autonomous vehicles to mobile devices.
## Regional Edge Caches
Regional Edge Caches are smaller data-centres deployed globally between your origin server and your Edge Locations (EL). They have larger cache capacity than individual ELs, allowing objects to remain cached longer.

Key benefits include--
- Content stays closer to viewers, reducing origin server load.
- Improved performance for less popular content that might be evicted from EL caches.
- Particularly helpful for user-generated content, e-commerce assets, and news content.
- When a viewer requests content not found in the nearest ELs, AWS checks the Regional Edge Cache before going back to the origin server.

Regional Edge Caches are skipped in regions that host your application origins.

# Popular AWS Offerings
Some of the most popular and widely used services offered by AWS are as follow--
- **Elastic Compute Cloud (EC2)**: Virtual server / machine hosted in Amazon's cloud.
- **Simple Storage Service (S3)**: Storage pool in Amazon's cloud.
- **Identity and Access Management (IAM)**: Access and privilege control system for operating AWS.
- **Virtual Private Cloud (VPC)**: Isolated sections of AWS cloud for launching AWS resources in a virtual network.
- **Simple Notification Service (SNS)**: Web service for sending and receiving notifications through the cloud network.
- **CloudWatch**: Monitoring solution for AWS resources.
- **Relational Database Service (RDS)**: Web service for operating relational database in Amazon's cloud.
- **DynamoDB**: NoSQL database service.
- **AWS Command Line Interface (AWS CLI)**: Tool for interfacing with all parts of AWS.

# Elastic Compute Cloud (EC2)
Elastic Compute Cloud (EC2) is a AWS cloud service that provides on-demand scalable computing capacity and resources that can be used to build and host software systems and services.

EC2 comes under the Compute category of AWS. It is designed to be a replacement for having physical hardware but with much lower cost for purchase, maintenance and scaling.
## Advantages of using EC2
1. **Flexibility and Customisation**: EC2 provides a wide range of instance types that allow you to customise and control virtual server configurations for optimal price/performance. There are various options including *general purpose*, *compute optimised*, *memory optimised*, *storage optimised*, and *accelerated computing* instances to match your specific workload needs.
2. **Scalability**: EC2 offers excellent scalability, allowing to scale the capacity and performance up or down in minutes as needs change.
3. **Cost-Efficiency**: EC2 eliminates the need for large upfront capital expenses on data-centres and servers. They charge only for the compute capacity that's actually used, which can lead to significant cost savings.
4. **Variety of Pricing Options**: EC2 offers flexible pricing models to further optimise costs as per the specific usage requirements.
5. **Global Reach**: EC2 is available in multiple AWS Regions worldwide, allowing deployment of applications closer to end-users for lower latency and better performance.
6. **Integration with AWS Services**: EC2 integrates seamlessly with other AWS services, such as *VPC* for networking, *EBS* for storage, and *IAM* for security, to build comprehensive and secure cloud solutions.
7. **High Performance**: EC2 offers high-performance options, including instances with enhanced networking capabilities, high I/O performance, and support for GPU and FPGA accelerators for specialised workloads.
8. **Security**: EC2 instances can be secured within *VPC* and protected with security groups, which act as virtual firewalls. This provides full control over virtual networking environment and instance isolation.
9. **Ease of Use**: EC2 provides a simple web interface that allows to obtain and configure capacity with minimal friction. It reduces the time required to obtain and boot new server instances to minutes, enabling quick scaling of capacity as your computing requirements change.
10. **Reliability**: EC2 is designed to be highly reliable, with options for deploying across multiple Availability Zones for increased fault tolerance and availability.
## Components of EC2
There are 5 major components of EC2--
1. **Instances**: Virtual Servers / Machines.
2. **Elastic Block Storage (ELB)**: Persistent and scalable storage volumes for Instances.
3. **Amazon Machine Image (AMI)**: Pre-configured Instance templates/blueprints that package the required components like OS and software. Can be used to deploy multiple Instances quickly.
4. **Elastic Load Balancer (ELB)**: System to automatically distribute incoming application traffic across multiple instances.
5. **Automatic Scaling Group (ASG)** or **EC2 Auto Scaling**: Automatically increase/decrease the number of available EC2 Instances to handle the application load.

# Simple Storage Service (S3)
Simple Storage Service (S3) is a scalable, highly-available, secure and high-performance object storage service to store and protect data to be used for data-lakes, websites, mobile apps, etc.
## Key facts about S3
- S3 is an independent storage service, not requiring to be attached to any instances or other AWS items.
- An S3 storage is available globally, regardless of which availability zone it's created in.
- S3 storage blocks are called as "Buckets".
- A Bucket's name cannot contain uppercase letters.
- All data inside S3 bucket are stored as "objects".
- Data stored in S3 buckets can be configured to be available publicly to *everyone on the internet*, or just selected *few individuals on the internet*, or to *specific AWS accounts*, by using the *ACL feature*.
- Files and Folders have separate upload buttons.
- Uploaded folders **cannot be empty**. S3 buckets provide an option to create an empty folder.
- All contents of a bucket **must be deleted before deleting the bucket**.
## Bucket Versioning
Versioning in an S3 bucket allows keeping variants of an object in the bucket, which can be used to preserve, restore and retrieve every version of every object.

Versioning allows easy recovery from unintended actions and failures. S3 buckets can handle requests for each version as well.

S3 Bucket Versioning can be enabled when creating the bucket or later through the *Bucket Versioning* section under the *Properties* tab of a bucket. Versioning can also be enabled through the *S3 Console*, *AWS CLI* and *AWS SDKs*.

# Identity and Access Management (IAM)
Identity and Access Management is a AWS component for securely controlling access to AWS resources through user *identities*. It allows Root User to centrally manage users, security credentials and permissions that control access to AWS resources for users and applications.
## Identities
- When creating any AWS account, the account is referred to as an Identity. A new AWS account has a single sign-in identity, called the **Root User**.
- The Root User has the **highest privileges and permissions** and is allowed **full control of every AWS resources and components** available.
- IAM lets Root Users create more identities under their administration, where Root Users assign the required permissions and policies. This allows restricting and limiting access and privileges to only what is required for the role of the identity, and prevent errors and abuse.
- Access to AWS resources for identities are managed through **permissions** and **policies**.
- There are 3 types of identities -- Users, Groups and Roles.
### Users
An IAM user is an entity that is created in an AWS account, representing a *human user* or the workload that *interacts with AWS resources*. An IAM user has a **name** and **credentials**.
> ✒️ **Note:** An IAM user with *administrative permissions* is NOT the same thing as the AWS Root User.
#### IAM Users Documentation
- [Creating a User](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html)
- [Viewing IAM Users](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_list.html)
- [Change User Permissions](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_change-permissions.html)
- [Remove a User](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_remove.html)
### Groups
An IAM Group is a collection of users created to easily specify and manage permissions for all the users in the group. A permission or policy assigned to a user group will apply to all the members of a group, along with any individual policies assigned to each user in the group.

Important characteristics of IAM groups:
- A user **group can contain many users**, and a **user can belong to multiple user groups**.
- Users inherit the permissions and policies from parent groups, alongside their individually assigned access.
	> **Example:** if <b style="color: Salmon">GroupA</b> has <font color="Salmon">EC2 Full Access</font> and <b style="color: LimeGreen">User1</b> has <font color="LimeGreen">S3 Full Access</font>, then upon being a member of <b style="color: Salmon">GroupA</b>, <b style="color: LimeGreen">User1</b> will have <ins>**both**</ins> <font color="Salmon">EC2 Full Access</font> and <font color="LimeGreen">S3 Full Access</font>
- **Allowance is prioritised over restriction**. Meaning, if a user is assigned permission to allow access to a resource, but joins a group that is restricted from the same resource, the user's access will be unaffected. Similarly, if a user is a member of two groups having opposing access permissions for a resource, the user will be allowed to access that resource.
- **User groups can't be nested**; they can contain only users, not other IAM groups.
- **There is no default user group** that automatically includes all users in the AWS account. If you want to have a user group like that, you must create it and assign each new user to it.
- **The number and size of IAM resources** (number of groups, number of group membership of a user) in an AWS account are **limited**.
#### IAM Groups Documentation
- [Creating a Group](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_create.html)
- [Viewing Groups](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_list.html)
- [Add/Remove Group members](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_add-remove-users.html)
- [Rename a Group](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_rename.html)
- [Delete a Group](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_delete.html)
### Roles
An IAM Role is an identity users can create to have *specific permissions* with *credentials* that are valid for *short duration*. Roles can be assumed by trusted entities.

Roles can control the access of an identity or a resource to other identities, resources or services.
#### IAM Roles Documentation
- [IAM Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html)
- [Creating a Role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create.html)
- [Managing Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_manage.html)
- [Assign/Assume a Role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_manage-assume.html)
## Access Management
Access to AWS resources for any identity is managed through assigning permissions and policies to those identities.

While creating an Identity, the admin user is responsible for credential characteristics like:
- Creating random or custom password.
- Changing credential after first login.
- Allowing users to change password on their own.
- Password rotation policy.
### Permissions
Permissions are the specific actions that are allowed or denied on AWS resources. They are defined within *policies* and determine what an identity can and cannot do in AWS.
### Policies
Policies are a set of permissions that define what an AWS Identity is allowed or restricted to access. Policies can be applied through JSON format or from the available AWS policies templates.
#### Types of Policies
There are 7 different types of policies available in AWS, listed in order of usage frequency--
- **Identity-based policies**: Policies assigned to **identities** to grant permissions to them.
- **Resource-based policies**: Policies assigned to **AWS resources** to grant specified permissions to interact with other components.
- **Permissions boundaries**: A *managed* identity-based policy that defines what permissions an entity (user or role) can grant to **another entity under its administration**.
- **AWS Organisation SCPs**: Service Control Policies for **limiting permissions** that identity-based or resource-based policies grant to **IAM users or roles within an organisation**.
- **AWS Organisation RCPs**: Resource Control Policies for **limiting permissions** that identity-based or resource-based policies grant to **IAM users or roles within an organisation**.
- **Access Control Lists**: Assigned to an *AWS resource* to control which *principals from other accounts* can access it
- **Session policies**: Session policies limit (but not grant) the permissions that the role or user's identity-based policies grant to the session.
##### Identity-based Policies
Identity-based policies are JSON permissions-policy documents that control what actions an identity (users, groups of users, and roles) can perform, on which resources, and under what conditions. Identity-based policies can be further categorised:
- **Managed policies** – Standalone identity-based policies that can be attached to multiple users, groups, and roles in your AWS account. There are two types of managed policies:
    - **AWS-managed policies** – Managed policies that are created and managed by AWS.
    - **Customer-managed policies** – Managed policies that users create and manage in their AWS account. They allow more precise control over policies than AWS-managed policies.
- **Inline policies** – Policies that you add directly to a single user, group, or role. Inline policies maintain a strict one-to-one relationship between a policy and an identity. They are deleted when you delete the identity.
##### Resource-based Policies
Resource-based policies are attached to a **resource** (like S3 Bucket or EC2 Instance) to define the **actions** and their **respective conditions** a specified principal can perform on that resource.

Resource-based policies are inline policies and there are no managed resource-based policies.
#### Policies Documentation
- [Create Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_create.html)
- [Edit Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-edit.html)
- [Delete Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-delete.html)

# Virtual Private Cloud (VPC)
A Virtual Private Cloud is a logically isolated section of the AWS Cloud where AWS resources can be launched in a virtual network defined by the administrator.

A VPC is used to isolate the virtual organisational structure of a business for better management and security.
## Features of VPC
- **Virtual Private Clouds**: an isolated network environment functionally resembling a traditional network in an organisation's data-centre.
- **Subnets**: a *range of IP addresses* required to deploy AWS resources in a VPC, where each subnet resides entirely in a single Availability Zone.
- **IP Addressing**: *assign IP addresses* and/or import existing public IP addresses for allocating to AWS resources in a VPC.
- **Routing**: use *routing tables* to determine the direction of network traffic from a subnet or gateway.
- **Gateways and Endpoints**: connect a VPC to *other networks* using **gateways**; connect to a VPC *privately* without internet or NAT device using **endpoints**.
- **Peering Connections**: route traffic between resources in two VPCs.
- **Traffic Mirroring**: *copy and send traffic* from network interfaces to security and monitoring for *deeper inspection*.
- **Transit Gateways**: a *central hub for routing traffic* between multiple VPCs, VPN connections and AWS Direct Connect connections.
- **VPC Flow Logs**: *capture IP traffic information* going through network interfaces in a VPC.
- **VPN Connections**: connect VPCs to *on-premise network*.
## Components of VPC
A VPC has the following 6 major components--
1. **Internet gateway**: An internet gateway is a horizontally scaled, redundant, and highly available component that *allows communication between a VPC and the internet*.
2. **Route table**: A route table is a *set of rules that control the direction of traffic* from a subnet or gateway in a VPC.
3. **Subnets**: A subnet is a range of IP addresses in a VPC required to deploy AWS resources and residing entirely within one Availability Zone. There are two common types of subnets--
	- **Public subnets**: Public subnets have a direct route to an *internet gateway*, allowing resources in the subnet to access the public internet.
	- **Private subnets**: Private subnets have no direct route to an internet gateway and require a *NAT device* to access the public internet.
4. **Network ACL (NACL)**: A Network Access Control List *allows or denies* specific inbound or outbound *traffic at the subnet level*.
5. **Security group**: A security group *controls the traffic* that is allowed to reach and leave the *resources that it is associated with*.
6. **NAT gateway**: A gateway that provides *Network Address Translation* services in a VPC so that instances in a private subnet can *access networks outside the VPC*, but *external services can't initiate a connection* with those instances.
## Creating VPC and its Components
The following references link to the AWS documentation of creating VPC, Subnets, Route Tables, and Gateways
- [Plan a VPC](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-getting-started.html)
- [Create a VPC](https://docs.aws.amazon.com/vpc/latest/userguide/create-vpc.html)
- [Create Subnets](https://docs.aws.amazon.com/vpc/latest/userguide/create-subnets.html)
- [Create Route Table and Routes](https://docs.aws.amazon.com/vpc/latest/userguide/create-vpc-route-table.html)
- [Create Internet Gateway](https://docs.aws.amazon.com/vpc/latest/userguide/working-with-igw.html)
- [Creating NAT Gateway](https://docs.aws.amazon.com/vpc/latest/userguide/nat-gateway-working-with.html#nat-gateway-creating)

# Lambda Functions
AWS Lambda is an auto-scaling compute service that runs code without the need to manage any server, and is triggered only when there is demand.
## Components
### Event Source
An Event Source is a resource or service that triggers the execution of a Lambda function. It's essentially the *source of events* that cause your Lambda function to run.
#### Types of Event Sources
There 2 types of Event Sources -- **Push-based** event sources and **Pull-based** event sources.
##### Push-based Event Sources
Any AWS services that ***directly invoke** a Lambda function* by pushing events to it, are called Push-based event sources.

There are 2 types of push-based event sources--
- **Synchronous**: The triggering service **waits for a response from the Lambda function** after completion.
- **Asynchronous**: All triggering events are put into a *processing queue* and **Lambda returns a response immediately**, *without waiting* for the function to complete.
##### Pull-based Event Sources
Any AWS service which **Lambda *polls* or periodically checks** for any changes, events or messages, are called Pull-based event sources.

# Simple Notification Service (SNS)
Simple Notification Service is a fully managed service for **delivering messages** from *publishers* to *subscribers* about a *topic*.

SNS is used to deliver alerts or messages about an event about AWS resources. Besides human users, multiple components of AWS can send messages to each other through SNS.

# CloudWatch
CloudWatch is a scalable and flexible real-time **monitoring system** for observing performance, health and resource utilisation of AWS resources.

CloudWatch is useful for generating reports, optimising resources, and take meditative actions based on the metrics of active resources. CloudWatch doesn't monitor all AWS resources by default, it has to be configured to monitor the resources as per the requirements.
## Components of CloudWatch
### Dashboard
A CloudWatch Dashboard is an overview page that allows monitoring various AWS resources in a single view, even when these resources are spread across different regions.

There are two different types of dashboards--
- **Automatic Dashboard**: The default dashboard in CloudWatch home page that automatically displays metrics about every AWS resource in use.
- **Custom Dashboard**: A custom dashboard created by the user with metrics selected by the user for monitoring AWS resources of choice.
### Metrics
Metrics are measurable data about the performance of different AWS resources' systems. 

Metrics data are recorded down to the minute and stored for 15 months. Metrics disappear from a dashboard if no data is published in the past 14 days.

Examples of metrics include CPU, memory, network and storage usage of an EC2 instance, EBS volume usage, VPC network traffic, etc.
### Widgets
Widgets are customisable modular components of dashboards that help visualise and analyse various metrics, logs, and other data points in a single view. These widgets can be added, removed, resized, and rearranged on a dashboard to create a personalised monitoring experience.
#### Types of Widgets
Following are the different types of widgets available in CloudWatch--
- **Graph widget**: Shows graphs containing one or more metrics. Graphs can be of type *Line*, *Bar*, *Pie*, *Number*, *Stacked area*, and *Gauge*.
- **Manual Metrics widget**: Manually added metrics to any graph.
- **Metrics Explorer widget**: Graphs of multiple resources having the same tag, which are added or removed as their tags get modified.
- **Line widget**: Widget for comparing metrics over period of time.
- **Number widget**: Shows the latest metric values and trends as soon as they appear.
- **Gauge widget**: Visualises the metric values that go between ranges.
- **Text widget**: Shows a block of text in Markdown format.
- **Alarm widget**: Displays the status and metrics of one or more alarms.
- **Table widget**: A table showing the raw data-points of a metric and its quick summary.
- **Linked graphs**: Multiple graph widgets in a dashboard that linked such that zooming in one zooms the same amount in others.
### Alarms
Alarms are a CloudWatch system that monitor a metric and send notification or automatically take action when the monitored resource breaches a threshold.

# Relational Database Service (RDS)
Relational Database Service (RDS) is a web service that makes it easier to configure, operate, and scale a *relational database* in AWS cloud by *providing resizeable capacity* for an industry-standard relational database and *managing common database administration tasks*.

Amazon Aurora is a *fully managed* relational database engine that's built for the cloud and compatible with MySQL and PostgreSQL. Amazon Aurora is part of Amazon RDS.
## Basic Database Concepts
### Database
> [What is a Database? | Oracle](https://www.oracle.com/database/what-is-database/#database-defined)
> A database is an *organised collection of structured information*, or *data*, typically stored electronically in a computer system.
> 
> A database is usually controlled by a **Database Management System (DBMS)**. Together, the data and the DBMS, along with the applications that are associated with them, are referred to as a database system, often shortened to just database.
### Database Management System (DBMS)
A Database Management System, or DBMS, is a comprehensive database software program that serves as an *interface* between the database and its end users or programs for retrieving, updating, and managing the information, and enable administrative operations like monitoring, tuning, backup and recovery.
### Query Language
> [Query language | Wikipedia](https://en.wikipedia.org/wiki/Query_language)
> A Query Language, also known as *data query language* or *database query language (DQL)*, is a computer language used to make queries in databases and information systems to retrieve and manipulate data.
#### Structured Query Language
> [What is Structured Query Language? | Orcale](https://www.oracle.com/database/what-is-database/#sql)
> SQL is a programming language used by nearly all relational databases to query, manipulate, and define data, and to provide access control.
### Host
A database host is a service or platform that provides the infrastructures and resources needed to run a database.

Hosts range from as small as a mobile phone to as large as a data-centre, or completely virtual like Amazon Web Services, Google Cloud Platform, Microsoft Azure, etc.
### Types of Databases
#### Relational Database
> [What is a Relational Databse | IBM]()
> A relational database is a type of database that organises data into *rows and columns*, which *collectively form a table* where the data points are *related* to each other.
##### Relational DBMS (RDBMS)
A Relational DBMS is a DBMS that is designed to work with a relational database model using structured format with rows and columns. E.g.: MySQL, PostgreSQL, MariaDB, SQLite
#### NoSQL Database
> [What is a No-SQL Database? | IBM](https://www.ibm.com/think/topics/nosql-databases)
> NoSQL, also referred to as “not only SQL” or “non-SQL”, is an approach to database design that enables the storage and querying of data outside the traditional structures found in relational databases.
##### NoSQL DBMS
A No-SQL DBMS is a DBMS designed to work with the NoSQL database models. E.g.: MongoDB, Redis, Cassandra, Amazon DynamoDB.
## Advantages of AWS RDS
- **Easy configuration**: Amazon RDS is designed to be easy to set up and manage multiple industry-standard databases in AWS cloud.
- **Virtual database**: As the database is entirely hosted in cloud, no physical hardware maintenance is required, options for multiple industry-standard databases running simultaneously, and they're all easy to migrate.
- **Automatic backup**: AWS automatically manages backups, software patching, failure detection and recovery, alongside the options for doing so manually.
- **High availability**: AWS allows creating a primary database for high availability and a synchronous secondary database for failing over.
- **High security**: Aside from the security offered in the chosen database package, AWS can provide additional security through IAM and VPC.

# DynamoDB
DynamoDB is a *fully managed* **NoSQL database** service that is seamlessly scalable and provides extremely fast performance at any scale. DynamoDB stores data in key-value pairs.
## Documentation
- [Setting up DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/SettingUp.html)

# AWS Command Line Interface (AWS CLI)
AWS Command Line Interface (AWS CLI) is a unified open-source tool that provides a consistent interface for interacting with all parts of Amazon Web Services from a workstation device.

AWS CLI is mainly used for quick execution of small tasks and automating AWS operations using scripting.
## Documentation
- [Configure AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-authentication-user.html)
- [Download and Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

# Elastic Load Balancing (ELB) and Auto Scaling Group (ASG)
## Elastic Load Balancing
Elastic Load Balancing (ELB) automatically distributes incoming traffic across multiple targets, such as EC2 instances, containers, and IP addresses, in one or more Availability Zones.

It monitors the health of its registered targets, and routes traffic only to the healthy targets. ELB scales the load balancer capacity automatically in response to changes in incoming traffic.
## Auto Scaling Group
An Auto Scaling Group (ASG) is a collection of EC2 instances that are treated as a logical grouping for the purposes of automatic scaling and management.

An ASG is used to automatically scale the number and capacity of EC2 instances based on telemetry such as health check replacements and scaling policies. It's also used to maintain a number of active instances running an application as per the requirements.

ELB and ASG are used in tandem to maintain availability of an application running in an EC2 instance by increasing the amount and/or capacity of EC2 instances. They can also be used to reduce the number and capacity to save costs when demand is low.
## Documentation
- [Create a Launch Template of an EC2 Instance](https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html)
- [Create Auto Scaling Group using Launch Template](https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-launch-template.html)

# References
1. [AWS Documentation | AWS Regions and Availability Zones](https://docs.aws.amazon.com/global-infrastructure/latest/regions/aws-regions-availability-zones.html) and [AWS - Global Infrastructure](https://aws.amazon.com/about-aws/global-infrastructure/)
2. [AWS Documentation | What is Amazon EC2?](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html)
3. [AWS Documentation | What is Amazon S3?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html)
4. [AWS Documentation | What is IAM?](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)
5. [AWS Documentation | What is Amazon VPC?](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
6. [AWS Documentation | What is Amazon SNS?](https://docs.aws.amazon.com/sns/latest/dg/welcome.html)
7. [AWS Documentation | What is Amazon CloudWatch?](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html)
8. [AWS Documentation | What is Amazon RDS?](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html)
9. [AWS Documentation | What is Amazon DynamoDB?](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html)
10. [AWS Documentation | What is AWS Command Line Interface?](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)
11. [Oracle | What is a Database Management System (DBMS)](https://www.oracle.com/database/what-is-database/#WhatIsDBMS)
12. [AWS Documentation | What is Elastic Load Balancing?](https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/what-is-load-balancing.html)
13. [AWS Documentation | Auto Scaling Groups - Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-groups.html)
