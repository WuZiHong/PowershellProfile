Steps:

Due to oh-my-posh won't support powershell module, we need to use another way to download oh-my-posh. See https://ohmyposh.dev/docs/installation/windows
So the steps will be:

1. Install Windows Terminal from Windows Store
2. Install Powershell from Github
3. Install Modules
   - Install-Module ZLocation -Scope CurrentUser
   - Install-Module posh-git -Scope CurrentUser
   - Install-Module git-aliases -Scope CurrentUser
   - **winget install JanDeDobbeleer.OhMyPosh -s winget**
   - Install-Module PSReadLine -Scope CurrentUser
4. Create ps1 to C:\Users\{UserName}\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
5. Copy content to the file, save.
6. Enjoy!

The content in Microsoft.PowerShell_profile.ps1:

```
# posh-git
Import-Module posh-git
# git-aliases
Import-Module git-aliases -DisableNameChecking

# init theme
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/zash.omp.json' | Invoke-Expression
# or Run 'Get-PoshThemes'
# oh-my-posh init pwsh --config 'C:\Users\zihwu\AppData\Local\Programs\oh-my-posh\themes\zash.omp.json' | Invoke-Expression

# PSReadLine
Import-Module PSReadLine
# Enable Prediction History
Set-PSReadLineOption -PredictionSource History
# Advanced Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
```
![image](https://github.com/WuZiHong/PowershellProfile/assets/21151832/1aa5c020-c566-4bfa-8f51-6c3d4a3a9614)

That's all!

# Appendix

## Install Font to fix display issues

1. Find the `oh-my-posh.exe`, usually you can find the path in your environment variable `path`. Like 'C:\Users\zihwu\AppData\Local\Programs\oh-my-posh\bin'
2. Run the Powershell as **administrator**.
3. `cd` to the above bin folder, run `.\oh-my-posh.exe font install`
4. Select 'Meslo' font, click Enter button. Wait for completion.
![image](https://github.com/WuZiHong/PowershellProfile/assets/21151832/e45e134f-a555-4587-a6ba-12ddc6b07537)
5. In terminal, just click `CTRL + SHIFT + ,`, it will open your `settings.json`. add and save the `font.face` attribute under the `defaults` attribute in profiles:
```
{
    "profiles":
    {
        "defaults":
        {
            "font":
            {
                "face": "MesloLGM Nerd Font"
            }
        }
    }
}
```
![image](https://github.com/WuZiHong/PowershellProfile/assets/21151832/4b06a0cd-c3e3-49cd-9289-f36d9ff1fd78)

6. Re-open your terminal, enjoy!

**Deprecated**
1. ~~Install Windows Terminal from Windows Store~~
2. ~~Install Powershell from Github~~
3. ~~Install Modules~~
   - ~~Install-Module ZLocation -Scope CurrentUser~~
   - ~~Install-Module posh-git -Scope CurrentUser~~
   - ~~Install-Module git-aliases -Scope CurrentUser~~
   - ~~Install-Module oh-my-posh -Scope CurrentUser~~
   - ~~Install-Module PSReadLine -Scope CurrentUser~~
4. ~~Create ps1 to C:\Users\{UserName}\Documents\Microsoft.PowerShell_profile.ps1~~
5. ~~Copy content to the file, save.~~
6. ~~Enjoy!~~
