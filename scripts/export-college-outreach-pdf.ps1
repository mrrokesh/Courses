# Export college outreach kit to PDF
$ErrorActionPreference = "Continue"
$Root = Split-Path -Parent $PSScriptRoot
$Outreach = Join-Path $Root "college-outreach"
$PdfDir = Join-Path $Outreach "pdf"
$PrintCss = Join-Path $Root "styles\print.css"
$PosterCss = Join-Path $Root "styles\poster.css"

if (-not (Get-Command pandoc -ErrorAction SilentlyContinue)) {
    Write-Error "Pandoc not installed."
    exit 1
}

$PdfEngine = "C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe"
if (-not (Test-Path $PdfEngine)) {
    if (Get-Command wkhtmltopdf -ErrorAction SilentlyContinue) {
        $PdfEngine = "wkhtmltopdf"
    } else {
        Write-Error "wkhtmltopdf not found."
        exit 1
    }
}

function Export-MdToPdf {
    param([string]$InputPath, [string]$OutputPath, [string]$CssPath)
    $dir = Split-Path $OutputPath -Parent
    if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Force -Path $dir | Out-Null }
    & pandoc $InputPath -o $OutputPath --css=$CssPath --pdf-engine=$PdfEngine -V geometry:margin=0.6in -V documentclass=article 2>&1 | Out-Null
    if (Test-Path $OutputPath) {
        Write-Host "  OK: $(Split-Path $OutputPath -Leaf)" -ForegroundColor Green
    } else {
        Write-Host "  FAIL: $(Split-Path $OutputPath -Leaf)" -ForegroundColor Red
    }
}

New-Item -ItemType Directory -Force -Path $PdfDir | Out-Null
New-Item -ItemType Directory -Force -Path (Join-Path $PdfDir "posters") | Out-Null
New-Item -ItemType Directory -Force -Path (Join-Path $PdfDir "brochures") | Out-Null

Write-Host "Exporting core outreach documents..." -ForegroundColor Cyan
$core = @(
    "00-college-outreach-master-plan.md",
    "email-templates.md",
    "mou-college-partnership-draft.md",
    "event-day-checklist.md",
    "README.md"
)
foreach ($f in $core) {
    $in = Join-Path $Outreach $f
    if (Test-Path $in) {
        $out = Join-Path $PdfDir ([System.IO.Path]::ChangeExtension($f, ".pdf"))
        Export-MdToPdf -InputPath $in -OutputPath $out -CssPath $PrintCss
    }
}

Write-Host "Exporting posters..." -ForegroundColor Cyan
Get-ChildItem (Join-Path $Outreach "posters") -Filter "*.md" | Sort-Object Name | ForEach-Object {
    $out = Join-Path $PdfDir "posters\$($_.BaseName).pdf"
    Export-MdToPdf -InputPath $_.FullName -OutputPath $out -CssPath $PosterCss
}

Write-Host "Exporting brochures..." -ForegroundColor Cyan
Get-ChildItem (Join-Path $Outreach "brochures") -Filter "*.md" | Sort-Object Name | ForEach-Object {
    $out = Join-Path $PdfDir "brochures\$($_.BaseName).pdf"
    Export-MdToPdf -InputPath $_.FullName -OutputPath $out -CssPath $PrintCss
}

$count = (Get-ChildItem $PdfDir -Recurse -Filter "*.pdf" | Measure-Object).Count
Write-Host "`nDone. $count PDFs in: $PdfDir" -ForegroundColor Yellow
