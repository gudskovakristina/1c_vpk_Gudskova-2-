@echo off
chcp 65001 > nul
echo Шаг 1: Выгрузка документов из Филиала...
"C:\Program Files (x86)\1cv8t\common\1cestartt.exe" ENTERPRISE /F "C:\Users\Kristina\Documents\InfoBase7" /N"Администратор" /Execute "C:\Users\Kristina\Desktop\учеба\1с\осень\ВыгрузкаДокументов_Филиал.epf" /DisableStartupMessages
timeout /t 5 > nul

echo Шаг 2: Загрузка документов в Головной офис...
"C:\Program Files (x86)\1cv8t\common\1cestartt.exe" ENTERPRISE /F "C:\Users\Kristina\Documents\InfoBase8" /N"Администратор" /Execute "C:\Users\Kristina\Desktop\учеба\1с\осень\ЗагрузкаДокументов_Головной.epf" /DisableStartupMessages
timeout /t 5 > nul

echo Шаг 3: Выгрузка номенклатуры из Головного офиса...
"C:\Program Files (x86)\1cv8t\common\1cestartt.exe" ENTERPRISE /F "C:\Users\Kristina\Documents\InfoBase8" /N"Администратор" /Execute "C:\Users\Kristina\Desktop\учеба\1с\осень\ВыгрузкаНоменклатуры_Головной.epf" /DisableStartupMessages
timeout /t 5 > nul

echo Шаг 4: Загрузка номенклатуры в Филиал...
"C:\Program Files (x86)\1cv8t\common\1cestartt.exe" ENTERPRISE /F "C:\Users\Kristina\Documents\InfoBase7" /N"Администратор" /Execute "C:\Users\Kristina\Desktop\учеба\1с\осень\ЗагрузкаНоменклатуры_Филиал.epf" /DisableStartupMessages

echo Обмен завершен!
pause