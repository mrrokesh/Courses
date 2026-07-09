# College Outreach Kit

**MR ROKESH TECHNOLOGY** — Print-ready materials for college workshops, seminars, and partnership proposals.

---

## Contents

| Document | Description | PDF |
|----------|-------------|-----|
| [00-college-outreach-master-plan.md](00-college-outreach-master-plan.md) | 90-day outreach strategy + pitch script | `pdf/00-college-outreach-master-plan.pdf` |
| [email-templates.md](email-templates.md) | TPO/HOD emails + WhatsApp messages | `pdf/email-templates.pdf` |
| [mou-college-partnership-draft.md](mou-college-partnership-draft.md) | MoU template for college partnerships | `pdf/mou-college-partnership-draft.pdf` |
| [event-day-checklist.md](event-day-checklist.md) | Pre/during/post event checklist | `pdf/event-day-checklist.pdf` |
| [posters/](posters/) | A4 posters — 1 per department (12) | `pdf/posters/` |
| [brochures/](brochures/) | 1-page brochures — 1 per department (12) | `pdf/brochures/` |

---

## Department Posters & Brochures

| Code | Department | Poster | Brochure |
|------|------------|--------|----------|
| 00 | All Departments | `posters/00-All-Departments-poster.md` | `brochures/00-All-Departments-brochure.md` |
| 01 | CSE | `posters/01-CSE-poster.md` | `brochures/01-CSE-brochure.md` |
| 02 | AI & Data Science | `posters/02-AI-and-Data-Science-poster.md` | `brochures/02-AI-and-Data-Science-brochure.md` |
| 03 | IT | `posters/03-Information-Technology-poster.md` | `brochures/03-Information-Technology-brochure.md` |
| 04 | ECE | `posters/04-ECE-poster.md` | `brochures/04-ECE-brochure.md` |
| 05 | Cyber Security | `posters/05-Cyber-Security-poster.md` | `brochures/05-Cyber-Security-brochure.md` |
| 06 | AI & ML | `posters/06-AI-and-Machine-Learning-poster.md` | `brochures/06-AI-and-Machine-Learning-brochure.md` |
| 07 | EEE | `posters/07-EEE-poster.md` | `brochures/07-EEE-brochure.md` |
| 08 | Mechanical | `posters/08-Mechanical-poster.md` | `brochures/08-Mechanical-brochure.md` |
| 09 | Mechatronics | `posters/09-Mechatronics-poster.md` | `brochures/09-Mechatronics-brochure.md` |
| 10 | Civil | `posters/10-Civil-poster.md` | `brochures/10-Civil-brochure.md` |
| 11 | Fashion Technology | `posters/11-Fashion-Technology-poster.md` | `brochures/11-Fashion-Technology-brochure.md` |

---

## Before Printing

1. Replace `[Your Phone]`, `[Your Email]`, `[Your Website]` in posters and brochures
2. Add your logo image if desired (edit markdown or print and affix)
3. Generate QR code linking to your Google Form registration

---

## Generate & Export PDFs

```powershell
# Step 1: Generate posters + brochures (if not already done)
powershell -ExecutionPolicy Bypass -File ".\scripts\generate-college-outreach.ps1"

# Step 2: Export all outreach docs to PDF
powershell -ExecutionPolicy Bypass -File ".\scripts\export-college-outreach-pdf.ps1"
```

**Output:** `college-outreach/pdf/`

---

## What to Print for a College Visit

| Item | Qty | Format |
|------|-----|--------|
| Department poster | 5–10 | A4 or A3 color |
| Department brochure | 50 | A4 color, double-sided optional |
| Master plan (internal) | 1 | For your team |
| MoU draft | 2 copies | For HOD/Principal |
| Event checklist | 1 | For trainer |

---

**Philosophy:** Learn → Build → Deploy → Get Hired
