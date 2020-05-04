::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFC9VRxGQM2X3KrQM/Ofr0+uStkJQQPFyfIHI5r2NL+4suBW2Jdt9gzcKzItdWCQKLS34OTM9qmFMiTbVZZfR41qsGhzJtx8PSTZL1DTs3ntpMIM9ypdTgXLprRyqzvcv1HnsR6ANGm3ez6l8B5xRr0S9a0ao
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFC9VRxGQM2X3KrQM/Ofr0+uStkJQQPFyfIHI5raHLtwA71GpYIZj02Jf+A==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

echo ####################
echo Start to install
echo ####################

powershell -c [Environment]::SetEnvironmentVariable('Path',[Environment]::GetEnvironmentVariable('Path','Machine')+';%~dp0','Machine')
echo register "%~dp0" to system path

cd /d %~dp0
cd ts-dns
svc install

echo ####################
echo Set DNS Setting
echo #################### 

netsh interface ip set dnsservers name="WLAN" source=static address=127.0.0.1
netsh interface ip set dnsservers name="ÒÔÌ«Íø" source=static address=127.0.0.1
netsh interface ip add dns "WLAN" 114.114.114.114 index=2  
netsh interface ip add dns "ÒÔÌ«Íø" 114.114.114.114 index=2
pause