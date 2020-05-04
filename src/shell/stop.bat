@echo off

echo ####################
echo Service stop
echo ####################

cd /d %~dp0
cd ..
cd ts-dns
svc stop

pause