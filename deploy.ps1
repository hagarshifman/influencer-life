# Pushes the current site\index.html to GitHub; Netlify redeploys automatically (~1 min).
$env:Path += ";C:\Program Files\Git\cmd"
Set-Location $PSScriptRoot
git add -A
git diff --cached --quiet
if ($LASTEXITCODE -eq 0) { Write-Output "No changes to deploy."; exit 0 }
git commit -m "Update game"
git push
