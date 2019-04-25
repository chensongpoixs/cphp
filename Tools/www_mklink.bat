@echo off

setlocal
setlocal enabledelayedexpansion

cd /d %~dp0

mklink /d C:\wamp64\www\cphp    %~dp0..\cphp


rem echo %~dp0..\cphp




pause