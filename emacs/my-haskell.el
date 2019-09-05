(ensure-packages '(haskell-mode))

(require 'haskell-interactive-mode)
(require 'haskell-process)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

(custom-set-variables
 ;'(haskell-process-type 'cabal-repl)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t))

;(define-key interactive-haskell-mode-map (kbd "M-.") 'haskell-mode-goto-loc)
;(define-key interactive-haskell-mode-map (kbd "C-c C-t") 'haskell-mode-show-type-at)
