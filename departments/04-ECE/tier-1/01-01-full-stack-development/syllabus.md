---
title: "Track 1: Full Stack Development"
institution: MR ROKESH TECHNOLOGY
philosophy: Learn → Build → Deploy → Get Hired
version: 1.0
date: June 2026
---

<div class="institution-header">

# Track 1: Full Stack Development

**MR ROKESH TECHNOLOGY — Training & Internship Programs**

</div>

> **Skill path:** HTML/CSS → JavaScript/TypeScript → React → Node/Express → Spring Boot → REST APIs → Auth → Payments → Deploy

**Related:** [Master Syllabus](../00-master-syllabus.md) | [Duration Framework](../00-duration-framework.md) | [Project Progression](../00-project-progression.md)

---

## Track Overview

**Who this is for:** Aspiring web developers, B.Tech/BCA/MCA students, career switchers targeting frontend, backend, or full-stack roles.

**Prerequisites:** Basic computer literacy; no prior coding required for 2-week/1-month tiers. 6-month and 9-month tiers benefit from completing 1-month foundation or equivalent self-study.

**Tools & lab environment:**
- VS Code, Git, GitHub, Node.js (LTS), npm/yarn
- React, Express, MongoDB/PostgreSQL
- Postman, Chrome DevTools
- Render/Vercel/Netlify (free tier deployment)
- Optional (6mo+): Docker, Spring Boot, Razorpay/Stripe test keys

**Certification targets (9-month):** Portfolio-ready projects; optional AWS Cloud Practitioner alignment via [Track 8](08-cloud-platforms-aws-azure-gcp.md)

---

## Outcomes by Duration

| Duration | Hours | Job Readiness | Key Deliverables |
|----------|-------|---------------|------------------|
| **2 Weeks** | 40–50 | Awareness; needs mentorship | 1 deployed full-stack mini app |
| **1 Month** | 80–100 | Junior basics | Portfolio site + Blog CMS (MERN mini) |
| **3 Months** | 250–300 | Internship-ready | 3–4 projects + E-commerce/Job Portal capstone |
| **6 Months** | 500–600 | Entry–mid job-ready | 5–6 projects + production capstone |
| **9 Months** | 750–900 | Industry-ready | 8–10 projects + 2 advanced capstones (SaaS + RBAC dashboard) |

---

## Weekly Rhythm (All Durations)

| Day | Activity |
|-----|----------|
| Mon–Thu | Concept (30%) + live coding lab (70%) |
| Fri | Mini-project submission |
| Sat | Code review + doubt clearing |
| Sun | Revision + GitHub README documentation |

---

<div class="duration-section"></div>

## 2-Week Crash Course

**Mini Project:** Deployed full-stack notes app | **Level:** L1  
**Assessment:** Quiz (20%) + Lab checkpoints (40%) + Project demo (30%) + README (10%)

### Week 1

| Day | Topics | Lab Objective | Deliverable | Self-Check |
|-----|--------|---------------|-------------|------------|
| D1 | HTML5 semantic tags, document structure | Build semantic page skeleton | `index.html` with header, nav, main, footer | Name 5 semantic tags and their purpose |
| D2 | CSS Flexbox, Grid, responsive design | Style landing page for mobile + desktop | Responsive personal landing page | Explain Flexbox vs Grid use cases |
| D3 | JavaScript: variables, loops, functions, DOM | Manipulate DOM elements dynamically | Interactive elements on landing page | Write a function that filters an array |
| D4 | Events, fetch API, JSON | Fetch data from public API and display | API-powered section on page | What is the difference between sync and async? |
| D5 | React: JSX, components, props | Convert static page section to React component | React app with 2+ components | What are props and why are they read-only? |
| D6 | React: useState, useEffect hooks | Build stateful UI with side effects | Component with dynamic state | When does useEffect run? |
| D7 | React portfolio site (integration) | Combine week's topics into portfolio | **React portfolio site** on GitHub | Demo portfolio to mentor |

**Week 1 submission checklist:**
- [ ] Landing page responsive at 375px and 1280px widths
- [ ] To-Do or interactive feature working
- [ ] React portfolio pushed to GitHub with README

### Week 2

| Day | Topics | Lab Objective | Deliverable | Self-Check |
|-----|--------|---------------|-------------|------------|
| D1 | Node.js setup, Express basics, routing | Create Express server with 3 routes | Running Express server | What is middleware? |
| D2 | REST API design, CRUD operations | Build notes API (GET, POST, PUT, DELETE) | REST API for notes app | Name all HTTP methods and their uses |
| D3 | Connect frontend to API, error handling | React app consumes notes API | Full-stack notes UI + API | How do you handle 404/500 errors? |
| D4 | MongoDB/MySQL basics, schema design | Create notes collection/table | Database schema + seed data | SQL vs NoSQL — when to use each? |
| D5 | API + DB integration (Mongoose or mysql2) | Persist notes to database | Database-driven notes app | Explain CRUD at the database layer |
| D6 | JWT auth basics (register, login) | Add auth to notes API | Protected routes with JWT | What goes in a JWT payload? |
| D7 | Deploy to Render/Vercel, env variables | Deploy frontend + backend live | **Live deployed full-stack app** | Walk through deployment steps |

**Week 2 submission checklist:**
- [ ] API CRUD works via Postman and UI
- [ ] Auth flow tested (register → login → access protected route)
- [ ] Live URL in README; no secrets in repo

---

<div class="duration-section"></div>

## 1-Month Foundation

**Projects:** Portfolio website, Weather app, Blog frontend, Blog CMS (MERN mini) | **Levels:** L1–L2

| Week | Topics | Lab Focus | Project Milestone |
|------|--------|-----------|-------------------|
| **W1** | HTML/CSS/JS fundamentals, Git/GitHub, responsive design, accessibility basics | Daily HTML/CSS/JS labs; Git workflow | Portfolio website live on GitHub Pages |
| **W2** | ES6+ (arrow functions, destructuring, modules), async/await, fetch, React fundamentals (components, hooks) | Async API calls; React component architecture | Weather app with OpenWeather API |
| **W3** | React Router, controlled forms, lifting state, basic context | Multi-page React app with form validation | Blog frontend (3+ routes) |
| **W4** | Node/Express, REST conventions, MongoDB, Mongoose, JWT auth, deployment | Full-stack integration lab | **Blog CMS (MERN mini)** deployed |

**Weekly lab duration:** 3–4 hrs/day Mon–Thu (70% hands-on)

**W4 Capstone acceptance criteria (Blog CMS):**
- [ ] Create, read, update, delete blog posts via UI
- [ ] User registration and login with JWT
- [ ] Author can only edit own posts
- [ ] Deployed with environment variables for DB URI and JWT secret
- [ ] README with screenshots and live URL

---

<div class="duration-section"></div>

## 3-Month Job Ready

**Capstone:** E-commerce OR Job Portal (MERN) | **Level:** L3

| Month | Topics | Projects | Milestones |
|-------|--------|----------|------------|
| **M1** | Frontend mastery: HTML5, CSS3 (Flexbox/Grid), JS ES6+, React, Tailwind CSS, responsive + accessible UI | Portfolio (polished), To-Do app, Weather app | 3 frontend projects on GitHub |
| **M2** | Backend: Node.js, Express, REST API design, PostgreSQL + MongoDB, Mongoose/Prisma, JWT auth, error handling, validation | Task manager API, Blog CMS (enhanced) | API documented in Postman; auth tested |
| **M3** | Full-stack integration, Spring Boot intro, Razorpay/Stripe test payments, CI/CD basics (GitHub Actions), capstone | **Capstone: E-commerce or Job Portal** | Production deploy; payment flow OR job application flow |

**M3 Capstone acceptance criteria:**
- [ ] User auth (register, login, profile)
- [ ] Core domain CRUD (products/jobs + cart/applications)
- [ ] Admin role with elevated permissions
- [ ] Payment integration (test mode) OR application tracking workflow
- [ ] GitHub Actions CI runs tests on push
- [ ] 10-minute demo + architecture diagram

---

<div class="duration-section"></div>

## 6-Month Professional

**Capstone:** E-commerce / Social Media Clone / Job Portal | **Level:** L4  
*Aligned with Imperial College Bootcamp + Ada Developers Academy + TechKnowledgeHub*

| Month | Topics | Projects |
|-------|--------|----------|
| **M1** | HTML5, CSS3, JS ES6+, DOM, responsive design, WCAG accessibility | Portfolio + Calculator |
| **M2** | Advanced JS (closures, prototypes), async patterns, React (hooks, context, React Router) | To-Do + Weather + Blog UI |
| **M3** | React advanced (custom hooks, performance), Tailwind CSS, Jest + React Testing Library, SPA deployment | Full React SPA with routing + tests |
| **M4** | Node.js, Express, REST APIs, middleware, error handling, multer file upload, API versioning | REST API + Auth backend |
| **M5** | MongoDB + PostgreSQL, Mongoose, SQL joins, indexing, query optimization, transactions | Database-driven app (dual DB or migration exercise) |
| **M6** | Spring Boot intro, JWT/OAuth2, Razorpay/Stripe, Docker basics, capstone + career prep | **Capstone: E-commerce / Social Media Clone / Job Portal** |

**M6 Capstone acceptance criteria (L4 rubric):**
- [ ] All L3 criteria met
- [ ] Payment gateway OR social feed with real-time updates
- [ ] Admin dashboard for content/user management
- [ ] Minimum 5 automated tests (Jest)
- [ ] Docker Compose for local dev environment
- [ ] CI/CD pipeline deploys on merge to main
- [ ] Case study document submitted

---

<div class="duration-section"></div>

## 9-Month Advanced

**Capstones:** (1) SaaS product (2) Enterprise dashboard with RBAC | **Level:** L5

**Additional modules beyond 6-month track:**
- TypeScript across frontend and backend
- Next.js (SSR/SSG/App Router)
- Microservices basics (API gateway pattern)
- Redis caching, WebSockets (real-time chat module)
- GraphQL intro (Apollo Server + Client)
- AWS/Vercel deployment pipelines
- Open-source contribution sprint (1 merged PR or meaningful contribution)
- Mock interviews + system design basics (URL shortener, chat system)

| Phase | Months | Focus |
|-------|--------|-------|
| Foundation | M1–M6 | Complete 6-month curriculum |
| Specialization | M7 | TypeScript + Next.js migration of capstone |
| Advanced backend | M8 | Microservices, Redis, WebSockets, GraphQL |
| Capstones | M8–M9 | SaaS product + Enterprise RBAC dashboard |

**Capstone 1 — SaaS Product acceptance criteria:**
- [ ] Multi-tenant or subscription model (Stripe billing)
- [ ] Next.js App Router with SSR/SSG where appropriate
- [ ] TypeScript strict mode enabled
- [ ] Redis caching for frequent queries
- [ ] Monitoring/logging configured

**Capstone 2 — Enterprise RBAC Dashboard acceptance criteria:**
- [ ] Role-based access control (admin, manager, viewer)
- [ ] Real-time updates via WebSockets
- [ ] GraphQL or REST API with comprehensive docs
- [ ] System design document with trade-offs
- [ ] Load tested with basic k6 or Artillery script

---

## Assessment Rubric (Track-Specific)

| Component | Weight | Criteria |
|-----------|--------|----------|
| Weekly Quiz | 20% | HTML/CSS/JS/React/Node concepts; code reading |
| Lab Completion | 40% | All checkpoints submitted; code runs; follows style guide |
| Project | 30% | Functionality, architecture, demo quality |
| Portfolio | 10% | GitHub README, live URL, commit history, case studies |

**Track-specific project grading emphasis:**
- Frontend weeks: UI responsiveness, accessibility, component structure
- Backend weeks: API design, error handling, security (no exposed secrets)
- Full-stack weeks: End-to-end flow, deployment, documentation

---

## Recommended Resources

| Resource | Used For |
|----------|----------|
| [MDN Web Docs](https://developer.mozilla.org/) | HTML, CSS, JavaScript reference |
| [React Documentation](https://react.dev/) | React hooks, components, patterns |
| [Node.js Documentation](https://nodejs.org/docs/) | Node/Express backend |
| [Ada Developers Academy Curriculum 2024](https://adadevelopersacademy.org/wp-content/uploads/2024/07/Ada-Core-Curriculum-Overview-2024.pdf) | Full Stack structure |
| [Imperial College Bootcamp Syllabus](https://www.hyperiondev.com/static/pdf/icl-full-stack-wd.pdf) | Project-based learning model |
| [TechKnowledgeHub 6-Month Curricula](https://techknowledgehub.org/) | Pacing and project sequencing |

---

## Appendix: Mentor Notes

**Common pitfalls:**
- Students skip Git commits until project end — enforce daily commits from Week 1
- Confusion between client-side and server-side validation — demonstrate both explicitly
- Environment variables not used; secrets committed to Git — run secret scan in code review
- React state mutation bugs — teach immutable update patterns early

**Hardware requirements:**
- Minimum 8 GB RAM, 256 GB storage
- Stable internet for deployment labs and npm installs

**Optional stretch goals:**
- Add dark mode toggle to portfolio
- Implement infinite scroll on blog
- Add OAuth (Google login) in 3-month+ tiers
- Migrate MERN app to TypeScript in 9-month tier

**Cross-track references:**
- Database depth: [Track 2 — Database Technologies](02-database-technologies.md)
- DSA interview prep: [Track 3 — Programming Languages](03-programming-languages.md)
- Deployment/CI/CD depth: [Track 7 — Cloud & DevOps](07-cloud-devops-server.md)
- Career modules: [Track 14 — Career Development](14-career-development-soft-skills.md)
