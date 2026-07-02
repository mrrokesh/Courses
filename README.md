# MR ROKESH TECHNOLOGY — Courses

**Institution:** MR ROKESH TECHNOLOGY TRAINING & INTERNSHIP PROGRAMS  
**Philosophy:** Learn → Build → Deploy → Get Hired

Course syllabi organized by **department** and **market demand tier**. Each course folder contains `syllabus.md` and `syllabus.pdf`.

---

## Local Folder

```
C:\Users\Santhosh Kumar\Courses\
```

---

## Repository Structure

```
Courses/
├── _framework/              Shared syllabus framework docs + PDFs
├── departments/
│   ├── 00-All-Departments/  Support services (projects, thesis, career, safety)
│   ├── 01-CSE/
│   ├── 02-AI-and-Data-Science/
│   ├── 03-Information-Technology/
│   ├── 04-ECE/
│   ├── 05-Cyber-Security/
│   ├── 06-AI-and-Machine-Learning/
│   ├── 07-EEE/
│   ├── 08-Mechanical/
│   ├── 09-Mechatronics/
│   ├── 10-Civil/
│   └── 11-Fashion-Technology/
│       ├── tier-1/          Highest placement demand
│       │   ├── pdf/         All tier-1 PDFs for this department
│       │   └── syllabus/    Markdown syllabi (optional reference)
│       ├── tier-2/
│       └── tier-3/
├── scripts/
│   └── build-department-catalog.ps1
└── course-manifest.csv      Full index of all placements
```

---

## Where PDFs Are Stored

Every department has PDFs grouped by tier:

```
departments/11-Fashion-Technology/tier-3/pdf/01-53-fashion-technology.pdf
departments/01-CSE/tier-1/pdf/01-01-full-stack-development.pdf
```

Shared framework PDFs (master syllabus, combo packages, etc.) are in `_framework/`.

---

| Tier | Priority | Typical Use |
|------|----------|-------------|
| **tier-1** | Highest demand | Placement batches, 3–6 month job-ready programs |
| **tier-2** | Strong demand | ECE/EEE/Mechatronics labs, hardware & automation |
| **tier-3** | Specialized | Design, simulation, EV, CNC, fashion, safety certs |

---

## Departments

| Code | Department |
|------|------------|
| `00-All-Departments` | Support services (all branches) |
| `01-CSE` | Computer Science Engineering |
| `02-AI-and-Data-Science` | Artificial Intelligence & Data Science |
| `03-Information-Technology` | Information Technology |
| `04-ECE` | Electronics & Communication Engineering |
| `05-Cyber-Security` | Cyber Security |
| `06-AI-and-Machine-Learning` | Artificial Intelligence & Machine Learning |
| `07-EEE` | Electrical & Electronics Engineering |
| `08-Mechanical` | Mechanical Engineering |
| `09-Mechatronics` | Mechatronics |
| `10-Civil` | Civil Engineering |
| `11-Fashion-Technology` | Fashion Technology |

---

## Rebuild Catalog

After updating source syllabi, regenerate the department folders:

```powershell
powershell -ExecutionPolicy Bypass -File ".\scripts\build-department-catalog.ps1"
```

Default source: MR ROKESH syllabus library (`mr-rokesh-syllabus`).

---

## Framework Documents

Located in `_framework/`:

- Master Syllabus
- Duration Framework
- Combo Packages
- Project Progression
- Department Course Map
- Tier Demand Catalog

---

**Total:** 53 unique tracks · 12 departments · 223 department-tier placements
