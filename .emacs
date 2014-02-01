;; .emacs

;; turn on font-lock mode
(global-font-lock-mode t)

(setq load-path (cons "C:/Program Files (x86)/emacs-22.3" load-path))

;; SML
(autoload 'sml-mode "sml-mode-color" () t)
(setq auto-mode-alist (cons '("\\.sml$" . sml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.sig$" . sml-mode) auto-mode-alist))
(add-hook 'sml-shell-hook
  #'(lambda ()
      (send-string sml-process-name
        "use \"C:/Program Files (x86)/emacs-22.3/print.sml\";\n")))

;;Haskell-mode
(load "C:/Users/Nikolaj/Documents/haskell-mode/haskell-site-file")
    (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
    (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
    ;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)


(setq backup-directory-alist `(("." . "C:/Users/Nikolaj/Documents/EmacsBackup")))

;; I hate tabs!
(setq-default indent-tabs-mode nil)

;; Show line-number in the mode line
(line-number-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)


(setq default-frame-alist
    '((font . "Monospace 8")))

;; menubar off
(tool-bar-mode 0)


;;Delete trailing whitespaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-subtle-hacker)))

;; no welcome s
(setq inhibit-startup-message t)


;;show matching parans
(show-paren-mode 1)
