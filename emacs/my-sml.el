(ensure-packages '(sml-mode))

(defun my-sml-mode-hook () "Local defaults for SML mode"
       (setq indent-tabs-mode nil))

(add-hook 'sml-mode-hook 'my-sml-mode-hook)
