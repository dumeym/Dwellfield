@echo off
setlocal
cd /d "%~dp0"

if not exist "dist\index.html" (
  echo The site has not been built yet.
  echo Run the build commands in 261114-网站本地运行说明.md first.
  pause
  exit /b 1
)

echo.
echo Backyard Home local preview
echo Open http://127.0.0.1:4321/ in your browser.
echo Keep this window open while reviewing the site.
echo Press Ctrl+C to stop the server.
echo.
python -m http.server 4321 --bind 127.0.0.1 --directory dist

if errorlevel 1 (
  echo.
  echo The preview did not start. If port 4321 is already in use,
  echo the site may already be available at http://127.0.0.1:4321/.
  pause
)

endlocal
