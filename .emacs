(add-to-list 'load-path "/home/nikolaj/")
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/sml-mode")
(add-to-list 'load-path "/usr/local/share/site-lisp/")
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )  

;; Aktiver sml-mode
(require 'sml-mode)

;;(autoload 'sml-mode "sml-mode" "Majer mode for edition SML." t)
;;(autoload 'run-sml "sml-proc" "Run an inferior SML process." t)
(add-to-list 'auto-mode-alist
            '("\\.sml$" . sml-mode))
(add-to-list 'auto-mode-alist
            '("\\.ML$"  . sml-mode))
(add-to-list 'auto-mode-alist
            '("\\.sig$" . sml-mode))



;; I hate tabs!
(setq-default indent-tabs-mode nil)

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-taming-mr-arneson)))

;; Show line-number in the mode line
(line-number-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)

(require 'column-marker)
(add-hook 'foo-mode-hook (lambda () (interactive) (column-marker-1 80)))

(custom-set-faces
 '(my-tab-face            ((((class color)) (:background "black"))) t)
 '(my-trailing-space-face ((((class color)) (:background "green"))) t)
 '(my-long-line-face ((((class color)) (:background "yellow"))) t))
(add-hook 'font-lock-mode-hook
          (function
           (lambda ()
             (setq font-lock-keywords
                   (append font-lock-keywords
                             '(("\t+" (0 'my-tab-face t))
                             ("^.\\{81,\\}$" (0 'my-long-line-face t))
                             ("[ \t]+$"      (0 'my-trailing-space-face t))))))))
(setq default-frame-alist
    '((font . "Monospace 8")))

;; menubar off
(tool-bar-mode 0)
