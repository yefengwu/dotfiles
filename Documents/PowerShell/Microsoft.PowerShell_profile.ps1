Import-Module DirColors
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship\starship.toml"
Invoke-Expression (&starship init powershell)

# 去掉系统自带的alias
Remove-Item Alias:sl -Force
#-------------------------------    Functions END     -------------------------------

#-------------------------------   Set Alias Begin    -------------------------------
function shenvtest {ls env:}
Set-Alias env shenvtest
function appupdate{scoop update *}
Set-Alias su appupdate
function bucketupdate {scoop update}
Set-Alias sd bucketupdate
Set-Alias vi $HOME/.local/bin/lvim.ps1
function cdone {cd ..}
Set-Alias .. cdone
function cdtwo {cd ../..}
Set-Alias ... cdtwo

function lsall {dir -Force}
Set-Alias la lsall
function slist {scoop list}
Set-Alias sl slist

Set-Alias mk marktext
function gcamend {git add . && git commit --amend --no-edit}
Set-Alias gad gcamend
Set-Alias eo explorer.exe
Set-Alias vi nvim
Set-Alias lg lazygit
Set-Alias ci chezmoi.exe