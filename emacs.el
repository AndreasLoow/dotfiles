;; Include in ~/.emacs with:
;;
;;    (load "/path-to/this/file/emacs.el")
;;    (load "my-common")
;;
;; Enable optional modes (located in the emacs directory) with:
;;
;;    (load "my-ocaml")
;;    (load "my-haskell")
;;    etc.

;; Packages
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'auto-package-update)
  (package-refresh-contents)
  (package-install 'auto-package-update))
(require 'auto-package-update)
(auto-package-update-maybe)

(defun ensure-packages (packages)
  (dolist (p packages)
    (unless (package-installed-p p)
      (package-install p))))

;; Path for loading optional modes
(add-to-list 'load-path
             (concat (file-name-directory (or load-file-name (buffer-file-name)))
                     "emacs"))

;; Various
(show-paren-mode 1)
(column-number-mode 1)
; Sometimes slow
(setq vc-handled-backends nil)

;; Temporary files
(make-directory "~/.emacs.d/.backups/" t)
(setq backup-directory-alist `((".*" . "~/.emacs.d/.backups/")))

(make-directory "~/.emacs.d/.autosaves/" t)
(setq auto-save-file-name-transforms `((".*" "~/.emacs.d/.autosaves/" t)))

;; Ui bloat
(setq inhibit-startup-message t)
(tool-bar-mode -1)
; Menu-bar-mode does not take up any space on Mac
(if (not (eq system-type 'darwin)) (menu-bar-mode -1))
; Sometimes scroll-bar-mode isn't defined, for some reason.
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
; Open files side-by-side
(setq split-height-threshold nil)
(setq split-width-threshold 0)

;; Mac
(if (eq system-type 'darwin) (load "my-mac.el"))
