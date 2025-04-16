# Nikahub Control Plane

Nikahub Control Plane is a customized solution built upon the foundation of [AWS SaaS Boost](https://github.com/awslabs/aws-saas-boost). It provides a production-ready control layer for deploying and managing **multi-tenant SaaS workloads** on AWS, tailored specifically for the needs of the Nikahub platform.

By leveraging and extending the AWS SaaS Boost architecture, this project simplifies the most time-consuming parts of SaaS platform engineering—**tenant onboarding, infrastructure provisioning, billing, metering, and operational insights**—allowing more focus on core product innovation.

---

## 📚 Table of Contents

- [Overview](#overview)
- [Repo Rundown](#repo-rundown)
- [Key Features](#key-features)
- [Why Nikahub Control Plane](#why-nikahub-control-plane)
- [License](#license)
- [Acknowledgements](#acknowledgements)

---

## 🔍 Overview

Nikahub Control Plane is designed to:
- Accelerate the delivery of SaaS features across tenant environments.
- Reduce complexity in onboarding, tracking, and scaling new tenants.
- Maintain operational transparency and security using AWS-native services.

This solution helps avoid reinventing foundational infrastructure, so engineering teams can spend less time on DevOps overhead and more time building valuable user features.

---

## 🗂️ Repo Rundown

Below is a high-level overview of the core directories and services in the project:

| Directory / File       | Description                                                                 |
|------------------------|-----------------------------------------------------------------------------|
| `client/web`           | Admin web application for managing tenants and viewing analytics            |
| `docs`                 | Documentation for installation and usage                                    |
| `functions`            | Lambda functions for ECS operations, deployment automation, and callbacks   |
| `installer`            | Command-line installer for provisioning resources                           |
| `layers`               | Shared Lambda layers for utilities and AWS integrations                     |
| `metering-billing`     | Optional module for billing and usage tracking                              |
| `metrics-analytics`    | Optional analytics tools using Kinesis and Redshift                         |
| `resources`            | AWS CloudFormation stacks and custom resource definitions                   |
| `samples`              | Example application workloads                                                |
| `services`             | Core microservices for tenant management, onboarding, settings, etc.        |

---

## ✨ Key Features

### Tenant Management
- Automated provisioning and teardown of tenant environments  
- Centralized visibility into tenant configurations and resource usage  

### Scalable Infrastructure
- Supports AWS services like ECS, Lambda, and RDS  
- Follows Infrastructure-as-Code (IaC) practices for consistent deployments  

### Operational Insights
- Integrates with CloudWatch and other observability tools  
- Optional cost tracking for resource allocation and optimization  

### Security & Compliance
- Fine-grained IAM controls for tenant isolation  
- Encrypted data management and secure resource access  

### Extensibility
- Microservices architecture allows independent module updates  
- Event-driven design using AWS SNS and Lambda for workflow automation  

---

## 💡 Why Nikahub Control Plane?

I implemented this project to address the recurring challenges I encountered while building and operating cloud-based, multi-tenant SaaS platforms. This control plane embodies hands-on experience with:

- **Automated CI/CD** using AWS CodePipeline, CodeBuild, and related tooling  
- **Infrastructure as Code** with CloudFormation and Terraform  
- **Monitoring & Observability** via CloudWatch, X-Ray, and log-driven dashboards  
- **Flexible onboarding flows** to handle diverse tenant setups dynamically  

As a result, I've cut down tenant provisioning time from **days or hours to just minutes**, drastically improving development efficiency and platform scalability.

---

## 🔗 License

This project is licensed under the **Apache-2.0 License**.  
It includes adaptations from [AWS SaaS Boost](https://github.com/awslabs/aws-saas-boost), which is also licensed under Apache-2.0.

---

## 🙏 Acknowledgements

Special thanks to **AWS SaaS Boost**, which provided the foundational architecture and inspiration for this work.

---
