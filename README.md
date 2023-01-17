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

## Tools Installation

>Check your 'winget' installation in cmd: If winget is not available in cmd, install "App-Installer" in your Microsoft Store App.

Recommended tools:

```
winget install -e --accept-package-agreements --silent --id=OpenJS.NodeJS
winget install -e --accept-package-agreements --silent --id=Microsoft.VisualStudioCode
winget install -e --accept-package-agreements --silent --id Microsoft.SQLServerManagementStudio
winget install -e --accept-package-agreements --silent --id DominikReichl.KeePass
winget install -e --accept-package-agreements --silent --id Git.Git --source winget
winget install -e --accept-package-agreements --silent --id Docker.DockerDesktop
winget install -e --accept-package-agreements --silent --id Postman.Postman

winget install -e --accept-package-agreements --silent --id=Microsoft.VisualStudio.2022.Enterprise
--> Exitcode 1 (why?)
```

Optional tools:

```
winget install -e --accept-package-agreements --silent --id Microsoft.WindowsTerminal
winget install -e --accept-package-agreements --silent --id Atlassian.Sourcetree
winget install -e --accept-package-agreements --silent --id GitExtensionsTeam.GitExtensions
winget install -e --accept-package-agreements --silent --id=Notepad++.Notepad++
winget install -e --accept-package-agreements --silent --id=Ghisler.TotalCommander
winget install -e --accept-package-agreements --silent --id=Google.Chrome
winget install -e --accept-package-agreements --silent --id Mozilla.Firefox
winget install -e --accept-package-agreements --silent --id SumatraPDF.SumatraPDF
```

Upgrade all tools to latest verion:

```
winget upgrade --force
```

## File Search Tool `everything`

Install `everything` in your Windows machine: Best search tool ever: <https://www.voidtools.com/>
