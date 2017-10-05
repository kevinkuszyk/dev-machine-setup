
$packages = @(
    "@angular/cli"
    "bower",
    "gitignore",
    "grunt-cli",
    "gulp",
    "karma-cli",
    "npm-check-updates",
    "yo"
)

foreach ($package in $packages)
{
    Write-Host "Installing $package" -ForegroundColor "DarkCyan"
    npm install $package -g

    Write-Host
}
