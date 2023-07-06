(TeX-add-style-hook
 "carga-de-trabajo-2b-16-11-17"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "spanish")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "mypack"))
 :latex)

