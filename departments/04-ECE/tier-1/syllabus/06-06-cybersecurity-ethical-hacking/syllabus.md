---
title: "Track 6: Cybersecurity & Ethical Hacking"
institution: MR ROKESH TECHNOLOGY
philosophy: Learn → Build → Deploy → Get Hired
version: 1.0
date: June 2026
---

<div class="institution-header">

# Track 6: Cybersecurity & Ethical Hacking

**MR ROKESH TECHNOLOGY — Training & Internship Programs**

</div>

> **Skill path:** Fundamentals → Networking → Recon → Exploitation → Web Security → Reporting

**Related:** [Master Syllabus](../00-master-syllabus.md) | [Duration Framework](../00-duration-framework.md) | [Project Progression](../00-project-progression.md)

---

## Track Overview

**Who this is for:** Aspiring security analysts, penetration testers, and SOC professionals.

**Prerequisites:** Basic networking and Linux helpful; taught from fundamentals in 1-month+ tiers.

**Tools & lab environment:** Kali Linux (VM), VirtualBox/VMware, Metasploitable, DVWA, OWASP Juice Shop, Nmap, Burp Suite Community, Wireshark, TryHackMe/HackTheBox (optional).

**Legal/ethical framework:** All labs in isolated VMs only; written authorization required for any external testing; CEH code of ethics reviewed Week 1.

**Certification targets (6–9 month):** CEH or CompTIA Security+ prep

---

## Outcomes by Duration

| Duration | Hours | Job Readiness | Key Deliverables |
|----------|-------|---------------|------------------|
| **2 Weeks** | 40–50 | Security awareness | Vulnerability assessment report |
| **1 Month** | 80–100 | Junior analyst basics | Mini pentest report |
| **3 Months** | 250–300 | Internship-ready | Full pentest report on test app |
| **6 Months** | 500–600 | Pentester entry-level | End-to-end pentest + professional report |
| **9 Months** | 750–900 | Red/blue team ready | Enterprise pentest + IR simulation |

---

## Weekly Rhythm (All Durations)

Mon–Thu lab exercises | Fri lab report | Sat CTF/review | Sun document findings (Markdown/PDF)

---

<div class="duration-section"></div>

## 2-Week Crash Course

**Mini Project:** Vulnerability assessment report | **Level:** L1

| Days | Topics | Lab | Self-Check |
|------|--------|-----|------------|
| D1–2 | Cyber fundamentals, CIA triad, legal/ethical framework | Security awareness quiz | Define confidentiality, integrity, availability |
| D3–4 | Networking (TCP/IP), Linux basics, Kali setup | Kali lab setup | Explain OSI model layers 3–7 |
| D5–6 | Reconnaissance, Nmap scanning, footprinting | Scan Metasploitable VM | Nmap scan types (-sS, -sV) |
| D7–8 | Web security: OWASP Top 10 (SQLi, XSS basics) | DVWA exploitation labs | Manual vs automated SQLi |
| D9–10 | Password security, basic reporting | **Vulnerability assessment report** | CVSS scoring basics |

**Submission checklist:**
- [ ] Kali VM configured with snapshot
- [ ] Nmap scan output attached
- [ ] DVWA SQLi and XSS screenshots
- [ ] 3-page assessment report with remediation recommendations

---

<div class="duration-section"></div>

## 1-Month Foundation

**Capstone:** Mini pentest report | **Level:** L2

| Week | Topics | Lab/Project |
|------|--------|-------------|
| W1 | Networking, Linux, Kali, cryptography basics | Lab setup + encryption lab |
| W2 | Recon, scanning (Nmap), enumeration | Footprinting report |
| W3 | System hacking, web app security (Burp Suite) | DVWA + OWASP Juice Shop |
| W4 | Wireless basics, incident response, pentest report writing | **Mini pentest report** |

**W4 acceptance criteria:**
- [ ] Executive summary + technical findings
- [ ] Minimum 5 vulnerabilities documented with severity
- [ ] Remediation steps for each finding
- [ ] Methodology section (recon → scan → exploit → report)

---

<div class="duration-section"></div>

## 3-Month Job Ready

**Capstone:** Full pentest report on test app | **Level:** L3

| Month | Topics | Projects |
|-------|--------|----------|
| M1 | Network security, Linux admin, cryptography | 5 guided labs |
| M2 | Recon, scanning, enumeration, exploitation (Metasploit) | CTF challenges (10) |
| M3 | Web app pentesting (OWASP Top 10), reporting, capstone | **Full pentest report on test app** |

**M3 Capstone acceptance criteria:**
- [ ] All OWASP Top 10 categories tested (where applicable)
- [ ] Burp Suite project file submitted
- [ ] Professional report format (15+ pages)
- [ ] Retest verification for critical findings

---

<div class="duration-section"></div>

## 6-Month Professional

*TCM Security + Texas A&M syllabus aligned*

| Month | Topics | Labs |
|-------|--------|------|
| M1 | Cyber fundamentals, networking, Linux, cryptography | Labs 1–3 |
| M2 | Footprinting, scanning, enumeration, system hacking | Labs 4–6 |
| M3 | Web app security (SQLi, XSS, CSRF, IDOR), Burp Suite | Labs 7–9 |
| M4 | Wireless security, malware analysis basics, Active Directory attacks | AD lab build |
| M5 | Cloud security basics, SIEM intro, incident response | IR simulation |
| M6 | Full penetration testing methodology, CTF, cert prep | **End-to-end pentest + professional report** |

**M6 Capstone acceptance criteria (L4):**
- [ ] AD lab exploited with documented attack path
- [ ] Cloud misconfiguration findings (S3/public bucket demo)
- [ ] SIEM alert triage simulation completed
- [ ] 25+ page report with executive and technical audiences

---

<div class="duration-section"></div>

## 9-Month Advanced

**Capstones:** Enterprise network pentest + Blue team IR simulation | **Level:** L5

**Additional modules:** Advanced AD exploitation, red team vs blue team exercises, SOC analyst workflows, digital forensics basics, bug bounty methodology.

---

## Assessment Rubric (Track-Specific)

| Component | Weight | Criteria |
|-----------|--------|----------|
| Weekly Quiz | 20% | Concepts, tools, legal/ethical scenarios |
| Lab Completion | 40% | Lab screenshots, commands logged, VMs configured |
| Project | 30% | Report quality, finding accuracy, remediation |
| Portfolio | 10% | GitHub with sanitized lab notes; TryHackMe profile |

---

## Recommended Resources

- [TCM Security – Practical Ethical Hacking](https://tcm-sec.com/academy/practical-ethical-hacking/)
- [OWASP Top 10](https://owasp.org/www-project-top-ten/)
- [TryHackMe](https://tryhackme.com/) / [HackTheBox](https://www.hackthebox.com/)

---

## Appendix: Mentor Notes

**Common pitfalls:** Running scans against unauthorized targets; skipping report writing; tool dependency without understanding underlying vulnerability.

**Hardware:** 16 GB RAM recommended for VMs; SSD required; never use production network for attack labs.

**Cross-track:** [Track 7 — DevOps](07-cloud-devops-server.md) for DevSecOps; [Track 8 — Cloud](08-cloud-platforms-aws-azure-gcp.md) for cloud security labs.
