```mermaid
flowchart TD

User[User Browser] --> ALB[Application Load Balancer]

ALB --> TG[Target Group]

TG --> EC2A[EC2 Instance - AZ1]
TG --> EC2B[EC2 Instance - AZ2]

EC2A --> ASG[Auto Scaling Group]
EC2B --> ASG
