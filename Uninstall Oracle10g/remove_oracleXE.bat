@echo off
echo ===============================
echo Hapus OracleXE 10g Services
echo ===============================

REM Stop services
net stop OracleServiceXE
net stop OracleXETNSListener
net stop OracleJobSchedulerXE
net stop OracleXEClrAgent

REM Delete services
sc delete OracleServiceXE
sc delete OracleXETNSListener
sc delete OracleJobSchedulerXE
sc delete OracleXEClrAgent

echo ===============================
echo Selesai! 
echo Cek registry & hapus folder Oracle secara manual bila masih ada.
echo ===============================
pause
