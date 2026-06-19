pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex

# Nettoyer
docker run --rm -v "$(Get-Location):/data" -w /data texlive/texlive latexmk -C main.tex

# Compiler
docker run --rm -it -v "$(Get-Location):/data" -w /data texlive/texlive latexmk -pdf -pvc main.tex

# Ouvrir le PDF dans un navigateur
start main.pdf