(TeX-add-style-hook
 "derivadas-practicar"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "spanish" "svgnames")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "mypack"))
 :latex)

