::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcDCDN36oCbtRxOnr++WXnkwIQO1ybJyW3rqdHOIa5Hnxe4U513ZW1s4UCXs=
::fBE1pAF6MU+EWHreyHcjLQlHcDCDN36oCbtRxOnr++WXnkwIQO1ybJyW3rqdHOIa5Hnxe4U513ZW1skNGHs=
::YAwzoRdxOk+EWAjk
::fBw5plQjdCqDJH2B4kc8Jwtoew2MOGStFYk9/fz02/mjrF4hXeEwdrPS2buAH7JDuBWpJcNghi4ayZ8zXkhnLUWXPF9m+T4X5jDVZZXL4l60Gxq240ojAmx3iG3vgi4vX4Y5yI0K0C/e
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
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJgZkoaHUrQXA==
::ZQ05rAF9IBncCkqN+0xwdVsEAlXMbSXoZg==
::ZQ05rAF9IAHYFVzEqQIRPQ9bATCHMG6pBboM7czV3Io=
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWG2F/1ciJxV0Sw2WNH64Zg==
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCqDJH2B4kc8Jwtoew2MOGStFYk9/fz02/mjrF4hR/A8RJzezqGebuUL7yU=
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
..\svc install

echo ####################
echo Set DNS Setting
echo #################### 

netsh interface ip set dnsservers name="WLAN" source=static address=127.0.0.1
netsh interface ip set dnsservers name="ÒÔÌ«Íø" source=static address=127.0.0.1
netsh interface ip add dns "WLAN" 114.114.114.114 index=2  
netsh interface ip add dns "ÒÔÌ«Íø" 114.114.114.114 index=2

echo ####################
echo Finish
echo #################### 

pause