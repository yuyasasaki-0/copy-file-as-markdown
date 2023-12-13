:: MIT License
:: Copyright (c) 2023 Yuya Sasaki

@echo off
setlocal enabledelayedexpansion

:: Set base folder (update this variable to change the base folder)
set baseFolder=src

:: Set code page to UTF-8
chcp 65001 >nul

:: Check if a file was passed
IF "%~1"=="" (
  echo Usage: Drag and drop one or more files onto this script
  pause
  exit /b
)

:: Create temporary file
set tempfile=%temp%\_codeblock.md
>nul copy nul %tempfile%

:: Process each file
for %%G in (%*) do (
  echo Processing %%G...

  :: Set the full path
  set fullpath=%%~fG

  :: Find the path from the base folder onwards
  for /f "delims=" %%H in ("!fullpath!") do (
    set "relpath=!fullpath:*%baseFolder%=%baseFolder%!"
  )

  :: Replace backslashes with slashes
  set "relpath=!relpath:\=/!"

  echo ^```!relpath! >> %tempfile%
  type "%%G" >> %tempfile%
  echo ^``` >> %tempfile%
  echo. >> %tempfile%
)

:: Copy to clipboard
type %tempfile% | clip

echo Markdown code blocks copied to clipboard!
endlocal