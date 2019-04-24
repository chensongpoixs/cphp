@echo off

setlocal
setlocal enabledelayedexpansion

cd /d %~dp0

mklink /d C:\wamp\www\thinkphp    ..\thinkphp




pause