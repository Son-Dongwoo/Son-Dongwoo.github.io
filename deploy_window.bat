@echo off
REM ========================
REM Deploy Hugo site script
REM ========================

:: Build the project with the specified theme
hugo -t PaperMod

:: Navigate to the public directory
cd public

:: Add changes to git in the public folder
git add .

:: Ask for commit message for public folder
echo Enter commit message for gh-pages branch \(Press ENTER for default message\):
set /p msg_public="> "
if "%msg_public%"=="" set msg_public=Rebuilding site on %date% %time%
git commit -m "%msg_public%"

:: Push changes to the gh-pages branch
git push origin gh-pages

:: Return to the project root directory
cd ..

:: Add changes in the root directory
git add .

:: Ask for commit message for main branch
echo Enter commit message for main branch \(Press ENTER for default message\):
set /p msg_main="> "
if "%msg_main%"=="" set msg_main=Rebuilding site on %date% %time%
git commit -m "%msg_main%"

:: Push changes to the main branch
git push origin main
