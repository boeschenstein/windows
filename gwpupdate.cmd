rem 03.10.2023/pb
rem neu: Windows Store update (upd-stor.ps1). geht aber leider nicht :(

@echo 
timeout 2
@echo 
timeout 2
@echo 

echo off 

cls
echo.
echo.
echo.
echo Please close all Office Apps (close Teams using right-click in the lower right corner of your screen)
echo.

timeout 60

PushD "\\aidnas\AID\Share_001\security\update\"

echo npm cache clean
call npm cache clean -f

echo npm upgrade
call npm upgrade -g

echo wsl update
wsl --update

echo winget upgrade
winget upgrade --all --force --silent --include-unknown

echo Uninstalling non-LTS of node and npm
winget uninstall -q OpenJS.NodeJS --accept-source-agreements --silent -e --id=OpenJS.NodeJS

echo Installing or updating LTS of node and npm
winget install --accept-package-agreements --silent -e --id=OpenJS.NodeJS.LTS
dotnet tool update -g dotnet-dump  
dotnet tool update -g dotnet-ef  
dotnet tool update -g dotnet-gcdump  
dotnet tool update -g dotnet-trace  
dotnet tool update -g dotnet-counters  
dotnet tool update -g dotnet-symbol
dotnet tool update -g Microsoft.Web.LibraryManager.Cli
dotnet tool update -g dotnet-reportgenerator-globaltool
dotnet tool update -g dotnet-coverage

echo PLEASE READ:
echo PLEASE READ:
echo PLEASE READ:
echo On the next screen ("Datentraegerberenigung" or "Cleanup"), please select what you want to clean:
@echo 
timeout 2
@echo 
timeout 2
@echo 
timeout 2

call cleanmgr

rem TODO: TUT LEIDER NICHT
echo Update store apps
powershell \\aidnas\AID\Share_001\security\update\upd-stor.ps1

echo PLEASE READ:
echo PLEASE READ:
echo PLEASE READ:
echo Check the following list if there are new updates available and start updates again (whole batch file or "winget upgrade --all --force")

winget upgrade

echo.
echo.
echo.
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo !!!                                                                                           !!!
echo !!! Check Output:                                                                             !!!
echo !!! - You can ignore any Office related errors                                                !!!
echo !!! - Discuss other errors with the team                                                      !!!
echo !!!                                                                                           !!!
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo.
@echo 

echo on

PopD

pause
