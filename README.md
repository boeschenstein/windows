# Windows

## Package managers

- Winget (Windows Package Manager)
  - predecessor: AppGet (shut down)
- Chocolatey
- Scoop
- Microsoft Store

### WinGet

<https://github.com/microsoft/winget-cli>

`winget install firefox`

### Scoop

<https://scoop.sh/>

## Update any installation

- <https://community.chocolatey.org/packages/ChocolateyGUI>
- <https://patchmypc.com/home-updater>

## Active Directory

### List my AD Roles

`gpresult /V`

## Winget

>Check your 'winget' installation in cmd: If winget is not available in cmd, install "App-Installer" in your Microsoft Store App.

- Winget cheat sheet: <https://difyel.com/cheatsheet/winget-cheat-sheet/>

### Enable winget policies

``` cmd
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppInstaller /v EnableAdditionalSources /t REG_DWORD /d "1" /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppInstaller /v EnableAllowedSources /t REG_DWORD /d "1" /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppInstaller /v EnableAppInstaller /t REG_DWORD /d "1" /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppInstaller /v EnableDefaultSource /t REG_DWORD /d "1" /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppInstaller /v EnableExperimentalFeatures /t REG_DWORD /d "1" /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppInstaller /v EnableHashOverride /t REG_DWORD /d "1" /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppInstaller /v EnableLocalManifestFiles /t REG_DWORD /d "1" /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppInstaller /v EnableMicrosoftStoreSource /t REG_DWORD /d "1" /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppInstaller /v EnableMSAppInstallerProtocol /t REG_DWORD /d "1" /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppInstaller /v EnableSettings /t REG_DWORD /d "1" /f
```

### Tools Installation

Recommended tools:

```cmd
winget install -e --accept-package-agreements --silent --id=OpenJS.NodeJS
winget install -e --accept-package-agreements --silent --id=Microsoft.VisualStudioCode
winget install -e --accept-package-agreements --silent --id Microsoft.SQLServerManagementStudio
winget install -e --accept-package-agreements --silent --id DominikReichl.KeePass
winget install -e --accept-package-agreements --silent --id Git.Git --source winget
winget install -e --accept-package-agreements --silent --id Docker.DockerDesktop
REM winget install -e --accept-package-agreements --silent --id Postman.Postman

winget install -e --accept-package-agreements --silent --id=Microsoft.VisualStudio.2022.Enterprise
--> Exitcode 1 (why?)
```

Optional tools:

```cmd
winget install -e --accept-package-agreements --silent --include-unknown --id Microsoft.WindowsTerminal
winget install -e --accept-package-agreements --silent --include-unknown --id Atlassian.Sourcetree
winget install -e --accept-package-agreements --silent --include-unknown --id GitExtensionsTeam.GitExtensions
winget install -e --accept-package-agreements --silent --include-unknown --id=Notepad++.Notepad++
winget install -e --accept-package-agreements --silent --include-unknown --id=Ghisler.TotalCommander
winget install -e --accept-package-agreements --silent --include-unknown --id=Google.Chrome
winget install -e --accept-package-agreements --silent --include-unknown --id Mozilla.Firefox
winget install -e --accept-package-agreements --silent --include-unknown --id SumatraPDF.SumatraPDF

winget source reset
winget --info
winget source list 
```

Upgrade all tools to latest verion:

`--include-unknown: upgrade, if version is not in list`

```cmd
winget upgrade -all --force --silent --include-unknown
```

Search

```cmd
winget search <appname>
```

Export/Import

```cmd
winget export -o .\WinGetExport.json
winget import -i .\WinGetExport.json
```

Show folders

```cmd
winget --info
```

Edit Settings

```cmd
winget settings
```

## File Search Tool `everything`

Install `everything` in your Windows machine: Best search tool ever: <https://www.voidtools.com/>

# Android

## scrcpy

Share android phone screen on windows PC: scrcpy

- https://www.makeuseof.com/tag/mirror-android-screen-pc-mac-without-root/
- https://github.com/Genymobile/scrcpy/blob/master/README.md

# Tools

## Microsoft PC Manager

- <https://apps.microsoft.com/detail/9PM860492SZD?hl=de-de&gl=US>
- <https://pcmanager.microsoft.com/en-us>

## Software Center

Reset cache: `C:\Windows\CCM\ccmrepair.exe`
