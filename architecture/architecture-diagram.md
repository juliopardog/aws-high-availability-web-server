# AWS High Availability Architecture

This diagram illustrates the architecture used in this project.  
The system distributes incoming traffic across multiple EC2 instances deployed in different Availability Zones to ensure high availability and fault tolerance.

```mermaid
flowchart TD
User[User Browser] --> ALB[Application Load Balancer]
ALB --> TG[Target Group]
TG --> ASG[Auto Scaling Group]
ASG --> EC2A[EC2 Instance - Availability Zone 1]
ASG --> EC2B[EC2 Instance - Availability Zone 2]
```
