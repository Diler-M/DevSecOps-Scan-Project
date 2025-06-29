# DevSecOps Projects Overview 

## Overview
This project showcases a comprehensive DevSecOps implementation focused on embedding security throughout the software development lifecycle. It integrates Static Application Security Testing (SAST), Software Composition Analysis (SCA), and Infrastructure as Code (IaC) scanning directly into the CI/CD pipeline, specifically leveraging GitHub Actions workflows for applications deployed on AWS infrastructure.

## Project Goals

My key objectives for this project are to:

- Establish a robust Secure Software Development Lifecycle (SSDLC) by integrating security measures at every stage.
- Shift security left by automating vulnerability detection early in the development process.
- Ensure continuous security monitoring by seamlessly integrating security into the CI/CD pipeline.
- Uphold compliance with industry security best practices and standards.
- Implement PR blocking for critical and high-severity vulnerabilities to prevent their introduction into the codebase.

## Core Components
### 1. Infrastructure as Code (IaC) Scanning
IaC scanning is crucial for validating that our infrastructure configurations adhere to security best practices and compliance standards. It proactively identifies misconfigurations and potential security loopholes in cloud infrastructure before deployment.

#### Tools Utilised:
- **Terraform Compliance**:  Evaluates Terraform scripts against predefined security policies, ensuring compliance through behaviour-driven development (BDD) style language.
- **Trivy**: Provides automated IaC scanning, pinpointing security misconfigurations across AWS, Azure, and GCP cloud environments.

### 2. Static Application Security Testing (SAST)
SAST involves analysing the application's source or binary code without execution to identify security vulnerabilities, coding errors, and other potential issues directly within the codebase.

#### Tools:
- **CodeQl**: Performs deep static code analysis to uncover bugs, vulnerabilities, and code smells across various programming languages.

### 3. Software Composition Analysis (SCA)
SCA focuses on the identification and management of open-source components and third-party libraries used in the application. This helps in detecting known vulnerabilities present in external dependencies.

#### Tools:
- **Trivy**: Scans project dependencies and flags vulnerabilities based on data from sources like the National Vulnerability Database (NVD).

#### CI/CD Integration & Best Practices

To achieve a truly integrated DevSecOps workflow, this project also incorporates:

1. **Integration with CI/CD Pipeline**: SAST, SCA, and IaC scanning tools are seamlessly incorporated into the CI/CD pipeline for automated security testing.
2. **Pre-commit and Post-commit Hooks**: Implemented pre-commit hooks to trigger security scans before code merges, and post-commit hooks for additional checks after deployment.
3. **Custom Policies**: Defined project-specific and industry-standard security policies to ensure comprehensive security coverage.
4. **Automated Remediation**: Configured automated processes to fix identified vulnerabilities or misconfigurations when feasible.
5. **Reporting and Notifications**: Generates detailed security reports and sends timely notifications to relevant stakeholders for swift remediation actions.

## Conclusion
By thoroughly integrating SAST, SCA, and IaC scanning practices into the DevSecOps pipeline, this project significantly strengthens the security posture of applications running on AWS. The aim is to proactively reduce vulnerabilities and ensure continuous compliance throughout the entire software development lifecycle.

# DevSecOps Project Diagram

```mermaid
flowchart LR
    A[GitHub Repos] --> B{CI/CD Pipeline GH Actions}
    B --> C[SAST]
    B --> D[SCA]
    B --> E[IaC Scanning]
    C --> F[Static Code Analysis]
    D --> G[Dependency Check]
    E --> H[Infrastructure Configuration]
    F --> I[Code Vulnerabilities]
    G --> J[Dependency Vulnerabilities]
    H --> K[Infrastructure Misconfigurations]
    I --> L[Remediation Actions]
    J --> L
    K --> L
    L --> M[Reporting and Notifications]
    M --> N[Development Team]
    M --> O[Security Team]