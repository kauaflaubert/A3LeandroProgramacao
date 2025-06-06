@echo off

:: Compila o projeto
javac -cp "lib/mysql-connector-j-8.0.33.jar;src" src/**/*.java

:: Executa o programa
java -cp "lib/mysql-connector-j-8.0.33.jar;src" view.Sistema 