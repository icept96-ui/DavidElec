@echo off
echo = DavElec AutoDeploy =
set /p GITHUB_USER=Introduz o teu nome de utilizador GitHub: 
set /p GITHUB_TOKEN=Introduz o teu Personal Access Token (classic): 
set REPO_NAME=DavElec

echo Criando repositorio %REPO_NAME%...
curl -s -o response.txt -w "%%{http_code}" -X POST -H "Authorization: token %GITHUB_TOKEN%" -d "{\"name\":\"%REPO_NAME%\",\"private\":false}" https://api.github.com/user/repos > status.txt
set /p STATUS=<status.txt
del status.txt

if "%STATUS%"=="201" (
  echo Repositorio criado com sucesso.
) else if "%STATUS%"=="422" (
  echo Repositorio ja existe. Continuando...
) else (
  echo Erro ao criar repositorio. Codigo HTTP: %STATUS%
  pause
  exit /b 1
)

pushd %~dp0
if exist .git rmdir /s /q .git
git init
git add .
git commit -m "Upload DavElec via AutoDeploy" >nul 2>&1
set REMOTE_URL=https://%GITHUB_USER%:%GITHUB_TOKEN%@github.com/%GITHUB_USER%/%REPO_NAME%.git
git remote add origin %REMOTE_URL%
git branch -M main
git push -u origin main
if errorlevel 1 (
  echo Erro no push. Verifica credenciais.
  pause
  exit /b 1
)
echo Push concluido. Vai ao GitHub -> Actions -> workflow 'Android CI - Build APK (debug)'.
popd
pause