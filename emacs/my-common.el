(ensure-packages '(flycheck))

;; Whitespace
(setq-default show-trailing-whitespace t)
(require 'whitespace)
(global-whitespace-mode 1)

;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Flyspell
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(add-hook 'text-mode-hook 'flyspell-mode)

; Too slow for large files:
;(add-hook 'flyspell-mode-hook 'flyspell-buffer)

; TODO: Find a mode that works better than auto-dictionary-mode
; TODO: (too slow, takes forever to identify the language):
;(add-hook 'flyspell-mode-hook (lambda () (auto-dictionary-mode 1)))
