@echo off
REM ============================================================
REM  compilar.bat — Compila o relatório LaTeX (Windows)
REM  Requer: MiKTeX ou TeX Live instalado no PATH
REM ============================================================

echo [1/4] Primeira passagem pdflatex...
pdflatex -interaction=nonstopmode -shell-escape main.tex

echo [2/4] Biber (referencias)...
biber main

echo [3/4] Segunda passagem pdflatex...
pdflatex -interaction=nonstopmode -shell-escape main.tex

echo [4/4] Terceira passagem pdflatex (listas finais)...
pdflatex -interaction=nonstopmode -shell-escape main.tex

echo.
echo ============================================================
echo  Concluido! Abra main.pdf para ver o resultado.
echo ============================================================
pause
