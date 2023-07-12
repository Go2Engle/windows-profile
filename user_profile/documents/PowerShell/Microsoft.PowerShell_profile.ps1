$ohmyposhTheme = "spaceship"
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\$ohmyposhTheme.omp.json" | Invoke-Expression
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
function yt {
    yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4" $args
}
New-Alias -Name sudo -Value gsudo