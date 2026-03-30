param(
  [Parameter(Mandatory=$true)]
  [string]$Role,

  [Parameter(Mandatory=$true)]
  [string]$Output,

  [Parameter(Mandatory=$false)]
  [ValidateSet("es","en")]
  [string]$Lang = "es"
)

$roleFile = "roles\$Lang\$Role.md"
$headerFile = "sections\$Lang\header.md"
$footerFile = "sections\$Lang\footer.md"

if (!(Test-Path $roleFile)) {
  Write-Host "❌ No existe $roleFile"
  exit 1
}

if (!(Test-Path $headerFile) -or !(Test-Path $footerFile)) {
  Write-Host "❌ Faltan secciones en sections\$Lang\"
  exit 1
}

New-Item -ItemType Directory -Force -Path "build", "exports" | Out-Null

pandoc `
  $headerFile `
  $roleFile `
  $footerFile `
  --template=template_cv.html `
  --metadata lang=$Lang `
  -o build\$Output.html

if ($LASTEXITCODE -ne 0) {
  Write-Host "❌ Falló la generación HTML con pandoc"
  exit $LASTEXITCODE
}

Write-Host "[OK] HTML generado: build\$Output.html"

