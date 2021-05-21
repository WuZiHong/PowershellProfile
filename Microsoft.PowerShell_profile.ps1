# posh-git
Import-Module posh-git
# git-aliases
Import-Module git-aliases -DisableNameChecking
# oh-my-posh
Import-Module oh-my-posh
Set-PoshPrompt -Theme robbyrussel

# PSReadLine
Import-Module PSReadLine
# Enable Prediction History
Set-PSReadLineOption -PredictionSource History
# Advanced Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
