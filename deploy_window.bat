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

:: Commit changes in the public folder
set msg="Rebuilding site on %date% %time%"
if "%~1" NEQ "" (
  set msg="%~1"
)
git commit -m %msg%

:: Push changes to the gh-pages branch
git push origin gh-pages

:: Return to the project root directory
cd ..

:: Add changes in the root directory
git add .

:: Commit changes in the root directory
set msg="Rebuilding site on %date% %time%"
if "%~1" NEQ "" (
  set msg="%~1"
)
git commit -m %msg%

:: Push changes to the main branch
git push origin main
