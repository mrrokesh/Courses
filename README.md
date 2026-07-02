# MR ROKESH TECHNOLOGY — Courses

**Institution:** MR ROKESH TECHNOLOGY TRAINING & INTERNSHIP PROGRAMS  
**Philosophy:** Learn → Build → Deploy → Get Hired  
**Repository:** [github.com/mrrokesh/Courses](https://github.com/mrrokesh/Courses)

Print-ready course syllabi organized by **academic department** and **market demand tier**. PDFs are stored inside each department folder for easy browsing and distribution.

---

## Local Folder

```
C:\Users\Santhosh Kumar\Courses\
```

---

## Quick Access — PDF Locations

All course PDFs live under the matching department and tier:

```
departments/<department-code>/tier-<1|2|3>/pdf/<##-course-name>.pdf
```

**Examples:**

| Course | PDF path |
|--------|----------|
| Full Stack Development (CSE) | `departments/01-CSE/tier-1/pdf/01-01-full-stack-development.pdf` |
| Fashion Technology | `departments/11-Fashion-Technology/tier-3/pdf/01-53-fashion-technology.pdf` |
| AutoCAD (Civil) | `departments/10-Civil/tier-3/pdf/01-35-autocad-civil-design.pdf` |
| Career Development (all branches) | `departments/00-All-Departments/tier-1/pdf/03-14-career-development-soft-skills.pdf` |

**Shared framework PDFs** (not tied to one department):

```
_framework/00-master-syllabus.pdf
_framework/00-tier-demand-catalog.pdf
_framework/00-combo-packages.pdf
... (6 documents total)
```

Markdown syllabi are kept alongside PDFs at:

```
departments/<dept>/tier-<N>/syllabus/<##-course-name>/syllabus.md
```

---

## Repository Structure

```
Courses/
├── README.md
├── course-manifest.csv          Full index (department, tier, PDF path, track #)
├── _framework/                  Shared docs (MD + PDF)
│   ├── 00-master-syllabus.pdf
│   ├── 00-tier-demand-catalog.pdf
│   └── ...
├── departments/
│   ├── 00-All-Departments/
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
│       ├── README.md            Department overview
│       ├── tier-1/
│       │   ├── README.md        Course list for this tier
│       │   ├── pdf/             PDF syllabi (numbered)
│       │   └── syllabus/        Markdown syllabi
│       ├── tier-2/
│       │   ├── pdf/
│       │   └── syllabus/
│       └── tier-3/
│           ├── pdf/
│           └── syllabus/
└── scripts/
    └── build-department-catalog.ps1
```

---

## Tier Guide

| Tier | Folder | Priority | Typical Use |
|------|--------|----------|-------------|
| **1** | `tier-1/` | Highest demand | Placement batches, 3–6 month job-ready programs |
| **2** | `tier-2/` | Strong demand | ECE / EEE / Mechatronics labs, hardware & automation |
| **3** | `tier-3/` | Specialized | CAD, simulation, EV, CNC, fashion, safety certifications |

Courses are numbered within each tier folder (`01-`, `02-`, `03-`…) based on priority order for that department.

---

## Departments

| Code | Department | PDFs |
|------|------------|-----:|
| `00-All-Departments` | Support services (projects, thesis, career, safety) | 4 |
| `01-CSE` | Computer Science Engineering | 31 |
| `02-AI-and-Data-Science` | Artificial Intelligence & Data Science | 27 |
| `03-Information-Technology` | Information Technology | 29 |
| `04-ECE` | Electronics & Communication Engineering | 25 |
| `05-Cyber-Security` | Cyber Security | 11 |
| `06-AI-and-Machine-Learning` | Artificial Intelligence & Machine Learning | 21 |
| `07-EEE` | Electrical & Electronics Engineering | 14 |
| `08-Mechanical` | Mechanical Engineering | 22 |
| `09-Mechatronics` | Mechatronics | 17 |
| `10-Civil` | Civil Engineering | 17 |
| `11-Fashion-Technology` | Fashion Technology | 5 |

> A course may appear in multiple departments when it is relevant to more than one branch (e.g. Data Analytics in CSE, AI&DS, IT, and Civil). Each copy is numbered independently within that department's tier folder.

---

## Framework Documents

Located in `_framework/` (Markdown + PDF):

| Document | Description |
|----------|-------------|
| `00-master-syllabus` | Full consolidated blueprint (all 53 tracks) |
| `00-duration-framework` | Duration tiers, weekly rhythm, assessment |
| `00-combo-packages` | Package matrix and staggered schedules |
| `00-project-progression` | L1–L5 project ladder and capstone criteria |
| `00-department-course-map` | Courses mapped to academic departments |
| `00-tier-demand-catalog` | Tier 1 / 2 / 3 demand catalog |

---

## Rebuild Catalog

After updating source syllabi, regenerate all department folders and PDF placements:

```powershell
cd "C:\Users\Santhosh Kumar\Courses"
powershell -ExecutionPolicy Bypass -File ".\scripts\build-department-catalog.ps1"
```

**Default source:** MR ROKESH syllabus library (`mr-rokesh-syllabus`).

The script reads track Markdown and PDF files from the source library, then rebuilds:

- `departments/<dept>/tier-<N>/pdf/` — course PDFs per department
- `departments/<dept>/tier-<N>/syllabus/` — Markdown syllabi
- `_framework/` — shared documents
- `course-manifest.csv` — full placement index

---

## Stats

| Metric | Count |
|--------|------:|
| Unique tracks | 53 |
| Departments | 12 |
| Department-tier placements | 223 |
| Course PDFs in departments | 223 |
| Framework PDFs | 6 |

---

## Related Links

- **GitHub:** [mrrokesh/Courses](https://github.com/mrrokesh/Courses)
- **Course index:** [course-manifest.csv](course-manifest.csv)
- **Build script:** [scripts/build-department-catalog.ps1](scripts/build-department-catalog.ps1)
