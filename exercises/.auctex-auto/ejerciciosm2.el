(TeX-add-style-hook
 "ejerciciosm2"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("book" "spanish" "svgnames")))
   (TeX-run-style-hooks
    "latex2e"
    "book"
    "bk10"
    "mypack")
   (TeX-add-symbols
    "plogo")
   (LaTeX-add-labels
    "eq:tang"
    "eq:eq1"
    "eq:eq2"
    "eq:eq3"
    "eq:f"
    "eq:f1"
    "eq:f2"
    "eq:f3"
    "eq:f4"))
 :latex)

