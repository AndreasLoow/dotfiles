(ensure-packages '(sml-mode))

(defun my-sml-mode-hook ()
  (progn
    (setq indent-tabs-mode nil)
    (electric-indent-mode -1)))

(add-hook 'sml-mode-hook 'my-sml-mode-hook)
