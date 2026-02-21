@echo off
cd /d "c:\Users\MyPc\Desktop\проекты на VS\Новая папка (5)"
pm2 resurrect
timeout /t 3
pm2 status
