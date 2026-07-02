# Builds department/tier folder structure from MR ROKESH TECHNOLOGY syllabus source.
param(
    [string]$SourceRoot = "C:\Users\Santhosh Kumar\.cursor\projects\C-Users-SANTHO-1-AppData-Local-Temp-8a2033a1-929b-4d76-a58d-99f36dc8ad29\mr-rokesh-syllabus",
    [string]$DestRoot = "C:\Users\Santhosh Kumar\Courses"
)

$ErrorActionPreference = "Stop"

$departments = [ordered]@{
    "01-CSE"                    = "Computer Science Engineering"
    "02-AI-and-Data-Science"    = "Artificial Intelligence and Data Science"
    "03-Information-Technology" = "Information Technology"
    "04-ECE"                    = "Electronics and Communication Engineering"
    "05-Cyber-Security"         = "Cyber Security"
    "06-AI-and-Machine-Learning" = "Artificial Intelligence and Machine Learning"
    "07-EEE"                    = "Electrical and Electronics Engineering"
    "08-Mechanical"             = "Mechanical Engineering"
    "09-Mechatronics"           = "Mechatronics"
    "10-Civil"                  = "Civil Engineering"
    "11-Fashion-Technology"     = "Fashion Technology"
    "00-All-Departments"        = "All Departments (Support Services)"
}

# Global tier per track (1 = highest demand, 3 = specialized)
$trackTier = @{
    1=1; 2=1; 3=1; 4=1; 5=1; 6=1; 7=1; 8=1; 9=1; 10=1; 11=1; 12=1; 13=1; 14=1
    15=1; 16=1; 17=1; 18=1; 27=1; 28=1; 29=1; 30=1; 31=1; 32=1; 33=1; 34=1; 41=1; 43=1; 44=1; 50=1
    19=2; 20=2; 21=2; 22=2; 23=2; 25=2; 26=2; 38=2; 40=2; 42=2; 51=2
    24=3; 35=3; 36=3; 37=3; 39=3; 45=3; 46=3; 47=3; 48=3; 49=3; 52=3; 53=3
}

# Track -> department codes (core ● and elective ○ from department matrix)
$trackDepartments = @{
    1  = @("01-CSE","02-AI-and-Data-Science","03-Information-Technology","04-ECE","05-Cyber-Security","06-AI-and-Machine-Learning")
    2  = @("01-CSE","02-AI-and-Data-Science","03-Information-Technology","04-ECE","05-Cyber-Security","06-AI-and-Machine-Learning","07-EEE","10-Civil")
    3  = @("01-CSE","02-AI-and-Data-Science","03-Information-Technology","04-ECE","05-Cyber-Security","06-AI-and-Machine-Learning","07-EEE","08-Mechanical")
    4  = @("01-CSE","02-AI-and-Data-Science","03-Information-Technology","04-ECE","06-AI-and-Machine-Learning")
    5  = @("02-AI-and-Data-Science","06-AI-and-Machine-Learning","01-CSE","03-Information-Technology","04-ECE")
    6  = @("05-Cyber-Security","03-Information-Technology","01-CSE","04-ECE")
    7  = @("01-CSE","03-Information-Technology","02-AI-and-Data-Science","04-ECE","05-Cyber-Security","06-AI-and-Machine-Learning")
    8  = @("01-CSE","03-Information-Technology","02-AI-and-Data-Science","04-ECE","05-Cyber-Security","06-AI-and-Machine-Learning")
    9  = @("01-CSE","03-Information-Technology","08-Mechanical","10-Civil","02-AI-and-Data-Science","11-Fashion-Technology")
    10 = @("10-Civil","01-CSE","02-AI-and-Data-Science","03-Information-Technology","11-Fashion-Technology")
    11 = @("03-Information-Technology","10-Civil","11-Fashion-Technology","01-CSE","02-AI-and-Data-Science")
    12 = @("00-All-Departments")
    13 = @("00-All-Departments")
    14 = @("00-All-Departments")
    15 = @("01-CSE","03-Information-Technology","02-AI-and-Data-Science","05-Cyber-Security","06-AI-and-Machine-Learning")
    16 = @("02-AI-and-Data-Science","03-Information-Technology","01-CSE","10-Civil","06-AI-and-Machine-Learning")
    17 = @("02-AI-and-Data-Science","06-AI-and-Machine-Learning","01-CSE","03-Information-Technology")
    18 = @("02-AI-and-Data-Science","06-AI-and-Machine-Learning","01-CSE","03-Information-Technology")
    19 = @("04-ECE","07-EEE","08-Mechanical","09-Mechatronics","01-CSE","02-AI-and-Data-Science")
    20 = @("04-ECE","07-EEE","08-Mechanical","09-Mechatronics")
    21 = @("04-ECE","07-EEE","08-Mechanical","09-Mechatronics","01-CSE","02-AI-and-Data-Science")
    22 = @("04-ECE","07-EEE","08-Mechanical","09-Mechatronics")
    23 = @("04-ECE","08-Mechanical","09-Mechatronics","06-AI-and-Machine-Learning","01-CSE")
    24 = @("04-ECE","08-Mechanical","06-AI-and-Machine-Learning","09-Mechatronics")
    25 = @("07-EEE","09-Mechatronics","03-Information-Technology","04-ECE","08-Mechanical","10-Civil")
    26 = @("02-AI-and-Data-Science","04-ECE","06-AI-and-Machine-Learning","08-Mechanical","01-CSE","03-Information-Technology")
    27 = @("01-CSE","03-Information-Technology","02-AI-and-Data-Science","05-Cyber-Security")
    28 = @("01-CSE","03-Information-Technology","02-AI-and-Data-Science","05-Cyber-Security","06-AI-and-Machine-Learning")
    29 = @("02-AI-and-Data-Science","03-Information-Technology","10-Civil","01-CSE")
    30 = @("02-AI-and-Data-Science","03-Information-Technology","10-Civil")
    31 = @("03-Information-Technology","01-CSE")
    32 = @("03-Information-Technology","10-Civil","01-CSE","02-AI-and-Data-Science")
    33 = @("03-Information-Technology","01-CSE","02-AI-and-Data-Science","10-Civil","11-Fashion-Technology","06-AI-and-Machine-Learning")
    34 = @("02-AI-and-Data-Science","03-Information-Technology","06-AI-and-Machine-Learning","10-Civil","01-CSE")
    35 = @("10-Civil","08-Mechanical")
    36 = @("10-Civil","08-Mechanical")
    37 = @("08-Mechanical","09-Mechatronics")
    38 = @("07-EEE","04-ECE","08-Mechanical","09-Mechatronics","02-AI-and-Data-Science","06-AI-and-Machine-Learning","01-CSE","10-Civil")
    39 = @("07-EEE","04-ECE","10-Civil")
    40 = @("04-ECE","06-AI-and-Machine-Learning","07-EEE")
    41 = @("03-Information-Technology","05-Cyber-Security","01-CSE","04-ECE")
    42 = @("09-Mechatronics","08-Mechanical","07-EEE","04-ECE")
    43 = @("02-AI-and-Data-Science","06-AI-and-Machine-Learning","01-CSE","04-ECE")
    44 = @("05-Cyber-Security","03-Information-Technology")
    45 = @("08-Mechanical","09-Mechatronics")
    46 = @("08-Mechanical","10-Civil","09-Mechatronics","07-EEE")
    47 = @("07-EEE","08-Mechanical","09-Mechatronics","04-ECE")
    48 = @("08-Mechanical","09-Mechatronics")
    49 = @("00-All-Departments","01-CSE","03-Information-Technology","07-EEE","08-Mechanical","09-Mechatronics","04-ECE","10-Civil")
    50 = @("01-CSE","03-Information-Technology","02-AI-and-Data-Science","06-AI-and-Machine-Learning")
    51 = @("09-Mechatronics","08-Mechanical","04-ECE")
    52 = @("08-Mechanical","09-Mechatronics")
    53 = @("11-Fashion-Technology")
}

$trackFiles = Get-ChildItem -Path (Join-Path $SourceRoot "tracks") -Filter "*.md" | Sort-Object Name
$trackSlug = @{}
foreach ($f in $trackFiles) {
    if ($f.Name -match '^(\d+)-(.+)\.md$') {
        $trackSlug[[int]$Matches[1]] = $Matches[0]
    }
}

$deptRoot = Join-Path $DestRoot "departments"
if (Test-Path $deptRoot) {
    Remove-Item $deptRoot -Recurse -Force
}
New-Item -ItemType Directory -Path $deptRoot -Force | Out-Null

$frameworkDest = Join-Path $DestRoot "_framework"
if (Test-Path $frameworkDest) {
    Remove-Item $frameworkDest -Recurse -Force
}
New-Item -ItemType Directory -Path $frameworkDest -Force | Out-Null

$sharedDocs = @(
    "00-master-syllabus.md",
    "00-duration-framework.md",
    "00-combo-packages.md",
    "00-project-progression.md",
    "00-department-course-map.md",
    "00-tier-demand-catalog.md"
)
foreach ($doc in $sharedDocs) {
    $src = Join-Path $SourceRoot $doc
    if (Test-Path $src) {
        Copy-Item $src (Join-Path $frameworkDest $doc) -Force
        $pdfName = [System.IO.Path]::ChangeExtension($doc, ".pdf")
        $pdfSrc = Join-Path $SourceRoot "pdf\$pdfName"
        if (Test-Path $pdfSrc) {
            Copy-Item $pdfSrc (Join-Path $frameworkDest $pdfName) -Force
        }
    }
}

$stylesSrc = Join-Path $SourceRoot "styles"
if (Test-Path $stylesSrc) {
    Copy-Item $stylesSrc (Join-Path $frameworkDest "styles") -Recurse -Force
}

# Collect tracks per department+tier
$deptTierTracks = @{}
foreach ($deptCode in $departments.Keys) {
    $deptTierTracks[$deptCode] = @{ "tier-1" = @(); "tier-2" = @(); "tier-3" = @() }
}

foreach ($trackNum in ($trackDepartments.Keys | Sort-Object)) {
    $tier = "tier-$($trackTier[$trackNum])"
    foreach ($deptCode in $trackDepartments[$trackNum]) {
        if (-not $deptTierTracks[$deptCode][$tier].Contains($trackNum)) {
            $deptTierTracks[$deptCode][$tier] += $trackNum
        }
    }
}

$manifest = @()

foreach ($deptCode in ($departments.Keys | Sort-Object)) {
    $deptPath = Join-Path $deptRoot $deptCode
    New-Item -ItemType Directory -Path $deptPath -Force | Out-Null

    $deptReadme = @(
        "# $($departments[$deptCode])",
        "",
        "**Department code:** ``$deptCode``",
        "",
        "Courses organized by market demand tier. Lower tier number = higher placement priority.",
        "",
        "| Tier | Folder | Priority |",
        "|------|--------|----------|",
        "| 1 | ``tier-1/`` | Highest demand |",
        "| 2 | ``tier-2/`` | Strong demand |",
        "| 3 | ``tier-3/`` | Specialized / niche-high-value |",
        ""
    )

    foreach ($tierName in @("tier-1", "tier-2", "tier-3")) {
        $tracks = $deptTierTracks[$deptCode][$tierName] | Sort-Object
        if ($tracks.Count -eq 0) { continue }

        $tierPath = Join-Path $deptPath $tierName
        New-Item -ItemType Directory -Path $tierPath -Force | Out-Null

        $index = 1
        $tierReadme = @("# $($tierName.ToUpper()) - $($departments[$deptCode])", "", "| # | Track | Course |", "|---|-------|--------|")

        foreach ($trackNum in $tracks) {
            $slug = $trackSlug[$trackNum]
            if (-not $slug) { continue }

            $folderName = "{0:D2}-{1}" -f $index, ($slug -replace '\.md$','')
            $coursePath = Join-Path $tierPath $folderName
            New-Item -ItemType Directory -Path $coursePath -Force | Out-Null

            $mdSrc = Join-Path $SourceRoot "tracks\$slug"
            $pdfSrc = Join-Path $SourceRoot "pdf\$([System.IO.Path]::ChangeExtension($slug, '.pdf'))"

            Copy-Item $mdSrc (Join-Path $coursePath "syllabus.md") -Force
            if (Test-Path $pdfSrc) {
                Copy-Item $pdfSrc (Join-Path $coursePath "syllabus.pdf") -Force
            }

            $title = (Get-Content $mdSrc -TotalCount 20 | Select-String -Pattern '^# Track|^# Track \d+:|^# .+' | Select-Object -First 1).Line -replace '^#\s*',''
            if (-not $title) { $title = $slug }

            $tierReadme += "| $index | $trackNum | $title |"
            $manifest += [pscustomobject]@{
                Department     = $deptCode
                DepartmentName = $departments[$deptCode]
                Tier           = $tierName
                Sequence       = $index
                Track          = $trackNum
                Folder         = "$deptCode/$tierName/$folderName"
                SourceTrack    = $slug
            }
            $index++
        }

        $tierReadme | Set-Content (Join-Path $tierPath "README.md") -Encoding UTF8
        $deptReadme += "- **$tierName/** - $($tracks.Count) course(s)"
    }

    $deptReadme | Set-Content (Join-Path $deptPath "README.md") -Encoding UTF8
}

$manifest | Export-Csv (Join-Path $DestRoot "course-manifest.csv") -NoTypeInformation -Encoding UTF8
Write-Host "Built $($manifest.Count) course placements across $($departments.Count) departments."
Write-Host "Output: $DestRoot"
