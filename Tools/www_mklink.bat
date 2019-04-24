@echo off

setlocal
setlocal enabledelayedexpansion

cd /d %~dp0

mklink /d C:\wamp\www\cphp    ..\cphp




pause