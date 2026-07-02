---
title: "Track 8: Cloud Platforms (AWS / Azure / GCP)"
institution: MR ROKESH TECHNOLOGY
philosophy: Learn → Build → Deploy → Get Hired
version: 1.0
date: June 2026
---

<div class="institution-header">

# Track 8: Cloud Platforms (AWS / Azure / GCP)

**MR ROKESH TECHNOLOGY — Training & Internship Programs**

</div>

> **Skill path:** AWS → Azure → GCP → IAM → Compute → Storage → Serverless → Multi-cloud DR

**Related:** [Master Syllabus](../00-master-syllabus.md) | [Track 7 — DevOps](07-cloud-devops-server.md) (deployment toolchain)

---

## Track Overview

**Who this is for:** Aspiring cloud engineers, solutions architects, and developers deploying to cloud.

**Prerequisites:** Basic networking and Linux helpful; cloud concepts taught from Week 1.

**Tools & lab environment:** AWS Free Tier, Azure free account, GCP free tier, AWS CLI, Azure CLI, gcloud CLI, Terraform (6-month+).

**Distinction from Track 7:** Track 8 focuses on **cloud provider services and architecture**. Track 7 focuses on **DevOps practices** (Docker, K8s, CI/CD) that run on any cloud.

**Certification targets:** AWS SAA-C03 (6-month), AZ-900/AZ-104 (9-month)

---

## Outcomes by Duration

| Duration | Hours | Job Readiness | Key Deliverables |
|----------|-------|---------------|------------------|
| **2 Weeks** | 40–50 | Cloud awareness | 3-tier AWS architecture deployed |
| **1 Month** | 80–100 | Junior cloud basics | Full 3-tier AWS project |
| **3 Months** | 250–300 | Multi-cloud familiarity | One project per platform |
| **6 Months** | 500–600 | SAA-C03 ready | Multi-cloud DR solution |
| **9 Months** | 750–900 | Solutions architect level | Enterprise multi-tier + serverless platform |

---

## Weekly Rhythm (All Durations)

Mon–Thu cloud console + CLI labs | Fri architecture milestone | Sat cost review | Sun architecture diagram documentation

---

<div class="duration-section"></div>

## 2-Week Crash Course (AWS-focused)

**Mini Project:** Deploy 3-tier architecture | **Level:** L1

| Days | Topics | Lab | Self-Check |
|------|--------|-----|------------|
| D1–2 | Cloud concepts, IAM, EC2 | Launch EC2 instance | Principle of least privilege |
| D3–4 | S3, VPC basics | Static website on S3 | Public vs private subnet |
| D5–6 | RDS, load balancing intro | 2-tier web app | RDS Multi-AZ concept |
| D7–8 | Lambda + API Gateway (serverless) | Serverless API | Event-driven vs request-driven |
| D9–10 | Cost optimization, Well-Architected overview | **Deploy 3-tier architecture** | 6 pillars of Well-Architected |

---

<div class="duration-section"></div>

## 1-Month Foundation

**Capstone:** Full 3-tier AWS project | **Level:** L2

| Week | AWS Topics | Lab |
|------|------------|-----|
| W1 | IAM, EC2, S3, VPC | VPC + EC2 setup |
| W2 | RDS, ELB, Auto Scaling | Scalable web app |
| W3 | Lambda, API Gateway, DynamoDB | Serverless API |
| W4 | CloudWatch, Route 53, deployment | **Full 3-tier AWS project** |

**W4 acceptance criteria:**
- [ ] VPC with public/private subnets across 2 AZs
- [ ] ALB → EC2 → RDS architecture diagram
- [ ] CloudWatch alarms configured
- [ ] Route 53 or CloudFront for DNS/CDN

---

<div class="duration-section"></div>

## 3-Month Job Ready

| Month | Topics | Projects |
|-------|--------|----------|
| M1 | AWS core (IAM, EC2, S3, VPC, RDS) | AWS 3-tier project (enhanced) |
| M2 | Azure fundamentals (VMs, Blob Storage, Azure Functions) | Azure web app |
| M3 | GCP basics (Compute Engine, Cloud Storage, Cloud Functions) | GCP deployment + capstone integration |

**Capstone:** One integrated project demonstrating cross-cloud concepts (e.g., DR failover design document + partial implementation)

---

<div class="duration-section"></div>

## 6-Month Professional

*AWS SAA-C03 exam guide aligned*

| Month | Focus | Project |
|-------|-------|---------|
| M1 | AWS core: IAM, EC2, S3, VPC | Secure VPC design |
| M2 | Resilient architectures: RDS Multi-AZ, ALB, Auto Scaling | HA WordPress site |
| M3 | Serverless: Lambda, API Gateway, DynamoDB, SQS/SNS | Serverless image pipeline |
| M4 | Azure: VMs, App Service, Azure SQL, Functions | Azure web app |
| M5 | GCP: GKE, Cloud Run, BigQuery intro | GCP deployment |
| M6 | DR solutions, cost optimization, capstone + cert prep | **Multi-cloud disaster recovery solution** |

**M6 Capstone acceptance criteria (L4):**
- [ ] Primary workload on AWS with documented failover to Azure/GCP
- [ ] RTO/RPO defined and tested
- [ ] Cost analysis spreadsheet included
- [ ] Mock SAA-C03 practice exam score 75%+

---

<div class="duration-section"></div>

## 9-Month Advanced

**Capstones:** Enterprise multi-tier architecture + Serverless event-driven platform | **Level:** L5

**Additional modules:** ECS/EKS/AKS/GKE, hybrid cloud, migration strategies, AWS/Azure certification exam prep.

---

## Assessment Rubric (Track-Specific)

| Component | Weight | Criteria |
|-----------|--------|----------|
| Weekly Quiz | 20% | Cloud concepts, service selection, IAM |
| Lab Completion | 40% | Resources created; CLI commands logged |
| Project | 30% | Architecture quality, security, cost awareness |
| Portfolio | 10% | Architecture diagrams, Terraform repos, cost reports |

---

## Recommended Resources

- [AWS SAA-C03 Official Exam Guide](https://docs.aws.amazon.com/aws-certification/latest/solutions-architect-associate-03/solutions-architect-associate-03.html)
- [AWS Free Tier](https://aws.amazon.com/free/)
- [Microsoft Learn — Azure](https://learn.microsoft.com/en-us/training/azure/)
- [Google Cloud Skills Boost](https://www.cloudskillsboost.google/)

---

## Appendix: Mentor Notes

**Common pitfalls:** Over-provisioned instances; open security groups; no billing alerts; IAM users with excessive permissions.

**Cost control:** Set billing alerts Day 1; tear down resources after each lab; use free tier services only in 2-week/1-month tiers.

**Cross-track:** [Track 7 — DevOps](07-cloud-devops-server.md) for CI/CD to cloud; [Track 6 — Cybersecurity](06-cybersecurity-ethical-hacking.md) for cloud security labs.
