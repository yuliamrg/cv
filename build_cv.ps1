param(
  [Parameter(Mandatory=$true)]
  [string]$Role,

  [Parameter(Mandatory=$true)]
  [string]$Output
)

$roleFile = "roles\$Role.md"

if (!(Test-Path $roleFile)) {
  Write-Host "❌ No existe $roleFile"
  exit 1
}

pandoc `
  sections\header.md `
  $roleFile `
  sections\footer.md `
  --template=template_cv.html `
  -o build\$Output.html

Write-Host "[OK] HTML generado: build\$Output.html"


