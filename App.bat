@echo off
cls
:Pago
cls
title General Tasks - By Pepe-77777
echo General Tasks
echo.
echo -------------------
echo 1- Limpar lixeira
echo 2- Adicionar tarefas
echo 3- Remover tarefas
echo 4- Abrir tarefas
echo -------------------
echo.
set /p op=Escolha a tarefa: 
if %op%==1 goto lixeira
if %op%==2 goto editar
if %op%==3 goto tarefas
if %op%==4 goto abrir

:lixeira
rd /s /q %systemdrive%\$Recycle.bin
goto Pago

:editar
cd Scripts
set /p editar=Oque você quer adicionar?
echo echo %editar% >> tarefas.bat
echo pause >> tarefas.bat
echo. >> tarefas.bat
goto Pago

:tarefas
cd Scripts
echo Sendo feito, desculpe
goto Pago

:abrir
cd Scripts
start Tarefas.bat
goto Pago