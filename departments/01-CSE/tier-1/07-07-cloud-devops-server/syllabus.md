---
title: "Track 7: Cloud & Server Technologies (DevOps)"
institution: MR ROKESH TECHNOLOGY
philosophy: Learn → Build → Deploy → Get Hired
version: 1.0
date: June 2026
---

<div class="institution-header">

# Track 7: Cloud & Server Technologies (DevOps)

**MR ROKESH TECHNOLOGY — Training & Internship Programs**

</div>

> **Skill path:** Linux → Git → Docker → Kubernetes → CI/CD → Monitoring → IaC

**Related:** [Master Syllabus](../00-master-syllabus.md) | [Duration Framework](../00-duration-framework.md) | [Track 8 — Cloud Platforms](08-cloud-platforms-aws-azure-gcp.md) (AWS/Azure/GCP services)

---

## Track Overview

**Who this is for:** Aspiring DevOps engineers, SREs, and backend developers managing infrastructure.

**Prerequisites:** Basic command-line familiarity helpful; Linux taught from Week 1.

**Tools & lab environment:** Linux VM (Ubuntu), Git/GitHub, Docker, Docker Compose, Kubernetes (Minikube/kind), GitHub Actions, Jenkins, Terraform, Ansible, Prometheus, Grafana, Loki, ArgoCD.

**Distinction from Track 8:** Track 7 focuses on **how to build, deploy, and operate** systems (DevOps toolchain). Track 8 focuses on **cloud provider services** (AWS EC2, S3, Lambda, etc.).

**Certification targets (6–9 month):** CKA (Kubernetes) or Docker DCA prep (optional)

---

## Outcomes by Duration

| Duration | Hours | Job Readiness | Key Deliverables |
|----------|-------|---------------|------------------|
| **2 Weeks** | 40–50 | DevOps awareness | Deploy containerized app live |
| **1 Month** | 80–100 | Junior DevOps basics | App deployed on Minikube |
| **3 Months** | 250–300 | Internship-ready | Microservices on K8s capstone |
| **6 Months** | 500–600 | DevOps engineer entry | Production observable system |
| **9 Months** | 750–900 | SRE/GitOps ready | GitOps platform + self-healing architecture |

---

## Weekly Rhythm (All Durations)

Mon–Thu infrastructure labs | Fri automation milestone | Sat pipeline review | Sun runbook documentation

---

<div class="duration-section"></div>

## 2-Week Crash Course

**Mini Project:** Deploy containerized app live | **Level:** L1

| Days | Topics | Lab | Self-Check |
|------|--------|-----|------------|
| D1–2 | Linux fundamentals, SSH, file permissions, shell scripting | Linux admin tasks | Write bash script with loops |
| D3–4 | Git/GitHub, branching, PR workflow | Collaborative repo project | Resolve merge conflict |
| D5–6 | Docker: images, containers, Dockerfile, Compose | Containerize a web app | Explain image vs container |
| D7–8 | CI/CD with GitHub Actions | Auto-build + test pipeline | YAML pipeline triggers on push |
| D9–10 | Basic monitoring, deploy to cloud | **Deploy containerized app live** | Health check endpoint verified |

---

<div class="duration-section"></div>

## 1-Month Foundation

**Capstone:** Deploy app on Minikube | **Level:** L2

| Week | Topics | Project |
|------|--------|---------|
| W1 | Linux admin + shell scripting | Automated backup script |
| W2 | Git deep dive + GitHub Actions CI | CI pipeline for Node app |
| W3 | Docker + Docker Compose multi-service | 3-tier app in containers |
| W4 | Kubernetes basics (pods, services, deployments) | **Deploy app on Minikube** |

**W4 acceptance criteria:**
- [ ] Deployment, Service, and Ingress YAML applied
- [ ] Rolling update demonstrated
- [ ] CI pipeline builds and pushes Docker image

---

<div class="duration-section"></div>

## 3-Month Job Ready

**Capstone:** Containerized microservices on K8s | **Level:** L3

| Month | Topics | Projects |
|-------|--------|----------|
| M1 | Linux, Git, shell scripting, networking | Automation scripts |
| M2 | Docker, Compose, registry, CI/CD (GitHub Actions/Jenkins) | CI/CD pipeline |
| M3 | Kubernetes, Helm basics, Prometheus/Grafana intro | **Containerized microservices on K8s** |

---

<div class="duration-section"></div>

## 6-Month Professional

*DevOps Core Course 18-lab track aligned — [GitHub](https://github.com/inno-devops-labs/DevOps-Core-Course)*

| Month | Topics | Labs |
|-------|--------|------|
| M1 | Linux, Git internals, CI/CD foundations | Labs 1–3 |
| M2 | Docker, Terraform, Ansible | Labs 4–6 |
| M3 | Logging (Loki), Monitoring (Prometheus/Grafana) | Labs 7–8 |
| M4 | Kubernetes, Helm, secrets management | Labs 9–12 |
| M5 | GitOps (ArgoCD), progressive delivery | Labs 13–14 |
| M6 | StatefulSets, cluster monitoring, capstone | **Production-grade observable system** |

**M6 Capstone acceptance criteria (L4):**
- [ ] 3+ microservices with Docker Compose and K8s manifests
- [ ] Prometheus metrics + Grafana dashboard
- [ ] Centralized logging with Loki or ELK
- [ ] GitOps deployment via ArgoCD
- [ ] Runbook for common failure scenarios

---

<div class="duration-section"></div>

## 9-Month Advanced

**Capstones:** GitOps platform + Self-healing multi-service architecture | **Level:** L5

**Additional modules:** Full IaC (Terraform + Pulumi), service mesh (Istio intro), SRE practices (SLI/SLO), DevSecOps (Trivy, OWASP ZAP in pipeline), multi-cloud deployment.

---

## Assessment Rubric (Track-Specific)

| Component | Weight | Criteria |
|-----------|--------|----------|
| Weekly Quiz | 20% | Linux, Docker, K8s, CI/CD concepts |
| Lab Completion | 40% | Scripts run; pipelines green; clusters healthy |
| Project | 30% | Architecture, automation, observability |
| Portfolio | 10% | GitHub with IaC repos, pipeline YAML, runbooks |

---

## Recommended Resources

- [DevOps Core Course (18 Labs)](https://github.com/inno-devops-labs/DevOps-Core-Course)
- [Docker Documentation](https://docs.docker.com/)
- [Kubernetes Documentation](https://kubernetes.io/docs/)

---

## Appendix: Mentor Notes

**Common pitfalls:** Running containers as root; secrets in Git; no health checks; skipping rollback testing.

**Hardware:** 16 GB RAM for Minikube; WSL2 on Windows recommended.

**Cross-track:** [Track 8 — Cloud Platforms](08-cloud-platforms-aws-azure-gcp.md) for EKS/ECS deployment; [Track 1 — Full Stack](01-full-stack-development.md) for app being deployed.
