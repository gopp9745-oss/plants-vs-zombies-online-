@echo off
chcp 65001 >nul
title PvZ Online - Публичный доступ (ngrok)
color 0A

echo.
echo  ==========================================
echo    PvZ Online - Публичный доступ (ngrok)
echo  ==========================================
echo.
cd /d "c:\Users\MyPc\Desktop\проекты на VS\Новая папка (5)"

echo  [1/2] Проверяем сервер...
pm2 resurrect 2>nul
pm2 restart pvz-online 2>nul
timeout /t 2 /nobreak >nul
echo  [OK] Сервер запущен на порту 3000
echo.

echo  [2/2] Запускаем ngrok туннель...
echo  (Подождите 5-10 секунд...)
echo.

node tunnel.js

echo.
echo  Туннель остановлен.
echo.
pause
