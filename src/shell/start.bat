@echo off

echo ####################
echo Service start
echo ####################

cd /d %~dp0
cd ..
cd ts-dns
svc start

pause