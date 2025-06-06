#!/bin/bash

# Cria o diretório target se não existir
mkdir -p target/classes

# Compila todos os arquivos Java
javac -cp "lib/*" -d target/classes src/**/*.java

# Executa o programa
java -cp "lib/*:target/classes" view.gui.LocadoraGUI 