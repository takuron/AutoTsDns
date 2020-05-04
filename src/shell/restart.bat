@echo off

echo ####################
echo Service restart
echo ####################

cd /d %~dp0
cd ..
cd ts-dns
svc restart

pause