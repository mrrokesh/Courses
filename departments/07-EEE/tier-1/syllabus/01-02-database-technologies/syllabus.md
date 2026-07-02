---
title: "Track 2: Database Technologies"
institution: MR ROKESH TECHNOLOGY
philosophy: Learn → Build → Deploy → Get Hired
version: 1.0
date: June 2026
---

<div class="institution-header">

# Track 2: Database Technologies

**MR ROKESH TECHNOLOGY — Training & Internship Programs**

</div>

> **Skill path:** SQL/MySQL → PostgreSQL → MongoDB → Firebase → Design → CRUD → API Integration → Real-time DB

**Related:** [Master Syllabus](../00-master-syllabus.md) | [Duration Framework](../00-duration-framework.md) | [Project Progression](../00-project-progression.md)

---

## Track Overview

**Who this is for:** Aspiring DBAs, backend developers, data analysts, and full-stack developers needing database depth.

**Prerequisites:** Basic computer literacy. SQL familiarity helpful for 3-month+ tiers.

**Tools & lab environment:** MySQL Workbench, pgAdmin, MongoDB Compass, MongoDB Atlas (free tier), Firebase Console, DBeaver, Node.js/Python for API integration labs.

**Certification targets (6–9 month):** MySQL/PostgreSQL certification prep; MongoDB Associate Developer (optional)

---

## Outcomes by Duration

| Duration | Hours | Job Readiness | Key Deliverables |
|----------|-------|---------------|------------------|
| **2 Weeks** | 40–50 | SQL/NoSQL awareness | Library schema + connected app |
| **1 Month** | 80–100 | Junior DBA/analyst basics | Hybrid SQL + MongoDB project |
| **3 Months** | 250–300 | Internship-ready | Multi-tenant SaaS database design |
| **6 Months** | 500–600 | Production DBA-ready | Hospital/ERP hybrid schema capstone |
| **9 Months** | 750–900 | Industry-ready | Analytics platform + real-time backend |

---

## Weekly Rhythm (All Durations)

Mon–Thu labs | Fri project | Sat review | Sun GitHub README + schema documentation

---

<div class="duration-section"></div>

## 2-Week Crash Course

**Mini Project:** Connect app to DB | **Level:** L1

| Days | Topics | Lab | Deliverable | Self-Check |
|------|--------|-----|-------------|------------|
| D1–2 | RDBMS concepts, ER diagrams, normalization (1NF–3NF) | Design library schema | ER diagram + normalized tables | Explain 1NF, 2NF, 3NF with example |
| D3–4 | MySQL: CREATE, SELECT, JOIN, GROUP BY, indexes | Student management DB | Working MySQL database + 10 queries | Write INNER vs LEFT JOIN |
| D5–6 | PostgreSQL: advanced queries, window functions, CTEs | HR analytics queries | 5 analytics queries with window functions | What is ROW_NUMBER()? |
| D7–8 | MongoDB: collections, CRUD, aggregation pipeline | Blog/inventory NoSQL DB | MongoDB with 3 collections | When to choose MongoDB over SQL? |
| D9–10 | API + DB integration (Node/Python), Firebase Realtime DB basics | Connect app to DB | **Full-stack DB-connected app** | Explain connection pooling basics |

**Submission checklist:**
- [ ] ER diagram submitted (draw.io or dbdiagram.io)
- [ ] SQL scripts run without errors
- [ ] MongoDB aggregation returns expected results
- [ ] API endpoints read/write to database

---

<div class="duration-section"></div>

## 1-Month Foundation

**Capstone:** Hybrid SQL orders + MongoDB catalog | **Level:** L2

| Week | Focus | Project |
|------|-------|---------|
| W1 | SQL fundamentals, MySQL admin, backup/restore basics | Library management system |
| W2 | PostgreSQL, complex queries, indexing, EXPLAIN plans | E-commerce product DB |
| W3 | MongoDB, Mongoose, schema design, validation | Blog platform database |
| W4 | Firebase Realtime DB, security rules, hybrid architecture | **Hybrid: SQL orders + MongoDB catalog** |

**W4 acceptance criteria:**
- [ ] Orders in PostgreSQL/MySQL with referential integrity
- [ ] Product catalog in MongoDB with flexible attributes
- [ ] API layer queries both databases appropriately
- [ ] Firebase demo for real-time inventory counter (optional stretch)

---

<div class="duration-section"></div>

## 3-Month Job Ready

**Capstone:** Multi-tenant SaaS database design | **Level:** L3

| Month | Topics | Projects |
|-------|--------|----------|
| M1 | SQL deep dive, ER modeling, normalization, MySQL + PostgreSQL admin | Library + Inventory DB |
| M2 | Advanced SQL (CTEs, window functions), indexing, query optimization, EXPLAIN | Analytics dashboard queries |
| M3 | MongoDB Atlas, aggregation pipelines, Redis caching, API integration, capstone | **Multi-tenant SaaS database design** |

**M3 Capstone acceptance criteria:**
- [ ] Tenant isolation strategy documented (schema-per-tenant or row-level)
- [ ] Index strategy for top 5 queries documented
- [ ] Migration scripts (up/down) included
- [ ] Redis cache layer for read-heavy endpoints
- [ ] Performance benchmark before/after indexing

---

<div class="duration-section"></div>

## 6-Month Professional

**Capstone:** Hospital Management / ERP hybrid schema | **Level:** L4

| Month | Topics | Projects |
|-------|--------|----------|
| M1–M3 | As 3-month track | Library, Inventory, Analytics projects |
| M4 | Database administration: backups, replication, security, RBAC | DBA lab suite (5 labs) |
| M5 | Real-time databases (Firebase), connectivity patterns, connection pooling | Real-time sync demo |
| M6 | Performance tuning, sharding intro, capstone + cert prep | **Hospital Management / ERP hybrid schema** |

**M6 Capstone acceptance criteria:**
- [ ] Patient records, appointments, billing in SQL
- [ ] Medical imaging metadata or logs in NoSQL
- [ ] Backup/restore procedure documented and tested
- [ ] Role-based DB access (doctor, admin, receptionist)
- [ ] Query optimization report with EXPLAIN output

---

<div class="duration-section"></div>

## 9-Month Advanced

**Capstones:** Analytics platform + Real-time chat/social app backend | **Level:** L5

**Additional modules:** Data warehousing basics, ETL pipelines (Python/Airflow intro), database migration strategies, multi-region replication.

**Capstone 1 — Analytics Platform:**
- [ ] Star/snowflake schema design
- [ ] ETL pipeline from operational DB to warehouse
- [ ] 10+ analytical queries with documentation

**Capstone 2 — Real-time Chat Backend:**
- [ ] Firebase or MongoDB Change Streams for real-time
- [ ] Message indexing and pagination strategy
- [ ] Load test with 100 concurrent connections

---

## Assessment Rubric (Track-Specific)

| Component | Weight | Criteria |
|-----------|--------|----------|
| Weekly Quiz | 20% | SQL syntax, normalization, NoSQL concepts |
| Lab Completion | 40% | Queries run; schemas valid; migrations applied |
| Project | 30% | Schema design quality, optimization, documentation |
| Portfolio | 10% | GitHub repos with ER diagrams, query files, README |

---

## Recommended Resources

- [MySQL Documentation](https://dev.mysql.com/doc/)
- [PostgreSQL Tutorial](https://www.postgresql.org/docs/current/tutorial.html)
- [MongoDB University (Free)](https://learn.mongodb.com/)
- [Firebase Documentation](https://firebase.google.com/docs)

---

## Appendix: Mentor Notes

**Common pitfalls:** Skipping normalization; over-indexing; N+1 query patterns in API labs; storing JSON in SQL without justification.

**Hardware:** 8 GB RAM minimum; local MySQL + MongoDB or cloud free tiers.

**Cross-track:** [Track 1 — Full Stack](01-full-stack-development.md) for API integration context; [Track 5 — AI/ML](05-ai-ml-data-science.md) for analytics overlap.
