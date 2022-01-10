(load (concat (getenv "HOLDIR") "/tools/hol-input"))
(load (concat (getenv "HOLDIR") "/tools/holscript-mode"))
(load (concat (getenv "HOLDIR") "/tools/hol-mode"))

(modify-syntax-entry ?_ "_" holscript-mode-syntax-table)

(add-to-list 'auto-mode-alist '("\\.htex\\'" . latex-mode))
