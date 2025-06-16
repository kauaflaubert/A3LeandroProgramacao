@echo off
setlocal

:: Definindo cores para melhor visualização
color 0A

:: Menu de opções
:menu
cls
echo ================================
echo    LOCADORA - MENU DE OPCOES    
echo ================================
echo.
echo 1. Executar Interface Grafica
echo 2. Executar Versao Console
echo 3. Limpar Arquivos Compilados
echo 4. Compilar Projeto
echo 5. Limpar, Compilar e Executar GUI
echo 6. Limpar, Compilar e Executar Console
echo 7. Sair
echo.
echo ================================
echo.

set /p opcao="Escolha uma opcao (1-7): "

if "%opcao%"=="1" goto gui
if "%opcao%"=="2" goto console
if "%opcao%"=="3" goto clean
if "%opcao%"=="4" goto compile
if "%opcao%"=="5" goto fresh-gui
if "%opcao%"=="6" goto fresh-console
if "%opcao%"=="7" goto end

echo Opcao invalida!
timeout /t 2 >nul
goto menu

:compile
echo.
echo Compilando o projeto...
if not exist "target\classes" mkdir target\classes
javac -d target\classes -cp "lib/*" src/main/java/**/*.java
if errorlevel 1 (
    echo Erro na compilacao!
    pause
    goto menu
)
echo Compilacao concluida com sucesso!
timeout /t 2 >nul
goto menu

:clean
echo.
echo Limpando arquivos compilados...
if exist "target\classes" rd /s /q "target\classes"
echo Arquivos limpos com sucesso!
timeout /t 2 >nul
goto menu

:gui
call :compile
if errorlevel 1 goto menu
echo.
echo Iniciando interface grafica...
java -cp "lib/*;target/classes" view.gui.LocadoraGUI
goto menu

:console
call :compile
if errorlevel 1 goto menu
echo.
echo Iniciando versao console...
java -cp "lib/*;target/classes" view.console.LocadoraConsole
goto menu

:fresh-gui
call :clean
call :compile
if errorlevel 1 goto menu
echo.
echo Iniciando interface grafica (fresh)...
java -cp "lib/*;target/classes" view.gui.LocadoraGUI
goto menu

:fresh-console
call :clean
call :compile
if errorlevel 1 goto menu
echo.
echo Iniciando versao console (fresh)...
java -cp "lib/*;target/classes" view.console.LocadoraConsole
goto menu

:end
echo.
echo Encerrando...
timeout /t 2 >nul
exit 