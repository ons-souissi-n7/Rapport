# Fichiers auxiliaires supplémentaires à supprimer avec `latexmk -c` / `latexmk -C`.
# titletoc écrit main.ptc (mini-sommaires de chapitre) : latexmk ne le nettoie
# pas par défaut, et un main.ptc corrompu par un build interrompu casse tous les
# builds suivants. On l'ajoute donc à la liste de nettoyage.
$clean_ext .= ' ptc bcf run.xml';
