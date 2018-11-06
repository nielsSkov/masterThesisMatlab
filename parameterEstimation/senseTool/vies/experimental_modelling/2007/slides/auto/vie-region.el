(TeX-add-style-hook "vie-region"
 (function
  (lambda ()
    (LaTeX-add-environments
     "Saet")
    (TeX-add-symbols
     "argmin"
     "clap"
     "mathllap"
     "mathrlap"
     "mathclap"
     "mathllapinternal"
     "mathrlapinternal"
     "mathclapinternal")
    (TeX-run-style-hooks
     "amsmath"
     "amsfonts"
     "amssymb"
     "graphicx"
     "theorem"
     "inputenc"
     "latin1"
     "latex2e"
     "prosper10"
     "prosper"
     "pdf"
     "slideColor"))))

