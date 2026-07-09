# Generates department posters and brochures for college outreach kit.
$OutreachRoot = Join-Path (Split-Path -Parent $PSScriptRoot) "college-outreach"
$PosterDir = Join-Path $OutreachRoot "posters"
$BrochureDir = Join-Path $OutreachRoot "brochures"

New-Item -ItemType Directory -Force -Path $PosterDir, $BrochureDir | Out-Null

$depts = @(
    @{
        Code = "00-All-Departments"
        Name = "All Departments"
        Sub = "Placement Cell / IQAC / All Branches"
        Flagship = "Campus to Corporate: The 2026 Placement Roadmap"
        Workshop = "Build Your First GitHub Portfolio in One Day"
        Highlights = @("ATS resume & LinkedIn audit", "Mock technical + HR interviews", "Final-year project support", "Career roadmap for every branch")
        Courses = @("Career Development", "School & College Projects", "Thesis / Report Writing", "Industrial Safety")
        Tracks = "12, 13, 14, 49"
        Formats = "Seminar (3 hrs) | Workshop (1 day) | Placement Prep Day"
    },
    @{
        Code = "01-CSE"
        Name = "Computer Science Engineering"
        Sub = "CSE Department"
        Flagship = "Full Stack to First Offer: Building Job-Ready Developers in 2026"
        Workshop = "Build & Deploy a Full Stack App in 6 Hours"
        Highlights = @("MERN / Full Stack live deployment", "DSA + portfolio project strategy", "GitHub profile employers notice", "Internship & placement sprint roadmap")
        Courses = @("Full Stack Development", "Cloud Computing", "DevOps Engineering", "QA Automation", "Blockchain")
        Tracks = "01, 07, 08, 15, 28, 50"
        Formats = "Seminar | 1-Day Workshop | 3-Day Bootcamp"
    },
    @{
        Code = "02-AI-and-Data-Science"
        Name = "Artificial Intelligence & Data Science"
        Sub = "AI & DS Department"
        Flagship = "From Data to Decisions: AI & Data Science Careers Unlocked"
        Workshop = "Build Your First ML Model + Dashboard in One Day"
        Highlights = @("Python + SQL + Power BI pipeline", "Prompt Engineering & GenAI workflows", "Real dataset analysis project", "BI analyst & data scientist career paths")
        Courses = @("AI, ML & Data Science", "Data Analytics", "Deep Learning & NLP", "Prompt Engineering", "Power BI / Tableau")
        Tracks = "05, 16, 17, 29, 30, 43"
        Formats = "Seminar | 1-Day Workshop | 3-Day Bootcamp"
    },
    @{
        Code = "03-Information-Technology"
        Name = "Information Technology"
        Sub = "IT Department"
        Flagship = "IT Infrastructure & Enterprise Careers: Cloud, DevOps & ERP"
        Workshop = "AWS Cloud Lab: Deploy Your First Server in 6 Hours"
        Highlights = @("Cloud + DevOps CI/CD pipeline demo", "Salesforce & SAP career overview", "Network & system administration basics", "Enterprise IT vs product company roles")
        Courses = @("Cloud Computing", "DevOps Engineering", "Network Administration", "Salesforce", "SAP Basics", "QA Automation")
        Tracks = "07, 15, 41, 31, 32, 28, 50"
        Formats = "Seminar | 1-Day Workshop | 3-Day Bootcamp"
    },
    @{
        Code = "04-ECE"
        Name = "Electronics & Communication Engineering"
        Sub = "ECE Department"
        Flagship = "Smart Devices to Smart Careers: ECE in the IoT Era"
        Workshop = "Build an IoT Weather Station with Arduino / Raspberry Pi"
        Highlights = @("IoT sensor-to-cloud live demo", "Embedded systems career roadmap", "VLSI & edge AI introduction", "Drone & computer vision showcase")
        Courses = @("Robotics & IoT", "Embedded Systems", "VLSI Design", "Raspberry Pi", "Arduino", "Computer Vision")
        Tracks = "19, 20, 21, 22, 40, 26"
        Formats = "Seminar | 1-Day Lab Workshop | 3-Day Bootcamp"
    },
    @{
        Code = "05-Cyber-Security"
        Name = "Cyber Security"
        Sub = "Cyber Security Department"
        Flagship = "Cyber Warfare to Cyber Careers: Ethical Hacking Unmasked"
        Workshop = "Live Penetration Testing Lab (Legal & Controlled Demo)"
        Highlights = @("Ethical hacking live demonstration", "SOC analyst & forensics careers", "Network security fundamentals", "Blue team vs red team pathways")
        Courses = @("Cybersecurity & Ethical Hacking", "SOC Analyst & Digital Forensics", "Network Administration", "DevSecOps intro")
        Tracks = "06, 44, 41, 15"
        Formats = "Seminar | 1-Day Workshop | 3-Day Bootcamp"
    },
    @{
        Code = "06-AI-and-Machine-Learning"
        Name = "Artificial Intelligence & Machine Learning"
        Sub = "AI & ML Department"
        Flagship = "Building AI That Works: From Models to Production"
        Workshop = "Train & Deploy an Image Classifier in One Day"
        Highlights = @("Deep Learning & NLP use cases", "AI Agent development intro", "Computer Vision with YOLO demo", "MLOps & production AI roadmap")
        Courses = @("AI, ML & Data Science", "Deep Learning & NLP", "AI Agent Development", "Computer Vision", "Prompt Engineering")
        Tracks = "05, 43, 18, 26, 17"
        Formats = "Seminar | 1-Day Workshop | 3-Day Bootcamp"
    },
    @{
        Code = "07-EEE"
        Name = "Electrical & Electronics Engineering"
        Sub = "EEE Department"
        Flagship = "Powering the Future: EEE Careers in EV & Industrial Automation"
        Workshop = "PLC Programming & HMI Simulation Lab"
        Highlights = @("PLC ladder logic hands-on", "Electric Vehicle technology overview", "MATLAB/Simulink simulation demo", "Power systems & industrial careers")
        Courses = @("PLC & Industrial Automation", "Electric Vehicle Technology", "Power Systems & Machines", "Embedded Systems", "MATLAB & Simulink")
        Tracks = "25, 47, 39, 20, 38"
        Formats = "Seminar | 1-Day Lab | 3-Day Bootcamp"
    },
    @{
        Code = "08-Mechanical"
        Name = "Mechanical Engineering"
        Sub = "Mechanical Department"
        Flagship = "Design, Simulate, Manufacture: Mechanical Careers in Industry 4.0"
        Workshop = "SolidWorks / CATIA 3D Modeling Marathon"
        Highlights = @("CAD 3D modeling live session", "ANSYS FEA simulation intro", "CNC programming overview", "EV & drone design trends")
        Courses = @("SolidWorks Design", "CATIA Design", "ANSYS Simulation", "CNC Programming", "CAD/CAM", "EV Technology")
        Tracks = "52, 45, 46, 48, 37, 47"
        Formats = "Seminar | 1-Day CAD Lab | 3-Day Bootcamp"
    },
    @{
        Code = "09-Mechatronics"
        Name = "Mechatronics"
        Sub = "Mechatronics Department"
        Flagship = "Robotics Meets Reality: Mechatronics Careers in Smart Manufacturing"
        Workshop = "Build a Line-Following Robot in One Day"
        Highlights = @("ROS2 robotics simulation demo", "PLC + robotics integration", "Industry 4.0 smart factory overview", "Mechatronics systems integration project")
        Courses = @("Mechatronics Integration", "Robotics Engineering", "ROS2", "PLC Automation", "Robotics & IoT")
        Tracks = "42, 51, 23, 25, 19"
        Formats = "Seminar | 1-Day Lab | 3-Day Bootcamp"
    },
    @{
        Code = "10-Civil"
        Name = "Civil Engineering"
        Sub = "Civil Department"
        Flagship = "BIM & Beyond: Civil Engineering in the Digital Construction Era"
        Workshop = "AutoCAD Civil Drafting Masterclass"
        Highlights = @("AutoCAD plan, section, elevation", "BIM & structural engineering intro", "Construction data analytics", "ANSYS structural simulation overview")
        Courses = @("AutoCAD & Civil Design", "BIM & Structural Engineering", "Data Analytics", "ANSYS Simulation")
        Tracks = "35, 36, 16, 46"
        Formats = "Seminar | 1-Day CAD Lab | 3-Day Bootcamp"
    },
    @{
        Code = "11-Fashion-Technology"
        Name = "Fashion Technology"
        Sub = "Fashion Technology Department"
        Flagship = "Digital Fashion Revolution: From Sketch to 3D Runway"
        Workshop = "Digital Fashion Illustration & CLO3D Virtual Draping Lab"
        Highlights = @("Digital illustration (Illustrator / Procreate)", "CLO3D virtual garment draping demo", "Tech pack & flat sketch creation", "Fashion brand launch & digital marketing")
        Courses = @("Fashion Technology", "Digital Marketing", "UI/UX & Brand Design", "GenAI for Creatives")
        Tracks = "53, 11, 09, 34"
        Formats = "Seminar | 1-Day Design Lab | 3-Day Fashion Tech Bootcamp"
    }
)

function New-Poster($d) {
    $hl = ($d.Highlights | ForEach-Object { "<li>$_</li>" }) -join "`n"
    @"
---
title: "Poster — $($d.Name)"
css: ../styles/poster.css
---

<div class="poster">

<div class="poster-brand">MR ROKESH TECHNOLOGY</div>

<div class="poster-dept">$($d.Sub)</div>

<div class="poster-title">$($d.Flagship)</div>

<div class="poster-free">FREE SEMINAR / WORKSHOP FOR YOUR COLLEGE</div>

<div class="poster-box">
<h3>What Students Will Learn</h3>
<ul>
$hl
</ul>
</div>

<div class="poster-subtitle">Hands-on Workshop Option</div>
<div style="font-size:12pt;">$($d.Workshop)</div>

<div class="poster-tagline">Learn → Build → Deploy → Get Hired</div>

<div class="poster-cta">Scan QR to Register · Certificate Included</div>

<div class="poster-footer">
Training & Internship Programs · 2 Weeks to 9 Months · 53 Industry Tracks<br>
Contact: [Your Phone] · [Your Email] · [Your Website]
</div>

</div>
"@
}

function New-Brochure($d) {
    $courses = ($d.Courses | ForEach-Object { "- $_" }) -join "`n"
    @"
---
title: "Brochure — $($d.Name)"
institution: MR ROKESH TECHNOLOGY
---

<div class="institution-header">

# MR ROKESH TECHNOLOGY

**College Partnership Brochure — $($d.Name)**

</div>

> **Philosophy:** Learn → Build → Deploy → Get Hired

---

## Department

**$($d.Name)** ($($d.Code))

---

## Flagship Event (Free for College)

| Item | Details |
|------|---------|
| **Seminar Title** | $($d.Flagship) |
| **Workshop Title** | $($d.Workshop) |
| **Formats** | $($d.Formats) |
| **Duration** | Seminar: 3 hours · Workshop: 1 day · Bootcamp: 2–3 days |
| **Cost to College** | **FREE** (seminar) · Workshop/Bootcamp negotiable |
| **Certificate** | Participation certificate for all attendees |

---

## What Students Gain

$courses

---

## Training Programs (Post-Event)

| Program | Duration | Outcome |
|---------|----------|---------|
| **Skill Sprint** | 2 Weeks | Awareness + mini project |
| **Foundation** | 1 Month | 2 guided projects + portfolio start |
| **Job Ready** | 3 Months | Internship-ready + capstone |
| **Professional** | 6 Months | Placement-focused full stack |
| **Expert** | 9 Months | Advanced portfolio + placement sprint |

**Relevant tracks:** $($d.Tracks)

---

## Why Partner with MR ROKESH TECHNOLOGY?

- **53 industry-aligned tracks** across 12 academic departments
- Hands-on labs, capstone projects, and mentor-led batches
- Placement support: resume, LinkedIn, mock interviews, portfolio reviews
- NAAC / skill-development / IQAC-friendly programs
- Flexible formats: on-campus, hybrid, or center-based

---

## Next Steps

1. HOD / TPO confirms date and venue (auditorium or lab)
2. MR ROKESH TECHNOLOGY provides poster + registration QR
3. Free seminar delivered + student interest survey
4. Optional paid bootcamp or batch enrollment for interested students
5. MoU for long-term training partnership (optional)

---

## Contact

| | |
|---|---|
| **Organization** | MR ROKESH TECHNOLOGY TRAINING & INTERNSHIP PROGRAMS |
| **Phone** | [Your Phone Number] |
| **Email** | [Your Email] |
| **Website** | [Your Website] |
| **Courses** | github.com/mrrokesh/Courses |

---

*Replace bracketed contact fields before printing.*
"@
}

foreach ($d in $depts) {
    $posterPath = Join-Path $PosterDir "$($d.Code)-poster.md"
    $brochurePath = Join-Path $BrochureDir "$($d.Code)-brochure.md"
    New-Poster $d | Set-Content $posterPath -Encoding UTF8
    New-Brochure $d | Set-Content $brochurePath -Encoding UTF8
    Write-Host "Generated: $($d.Code)"
}

Write-Host "Done. Posters: $PosterDir | Brochures: $BrochureDir"
