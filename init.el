;; C-h as backspace
(keyboard-translate ?\C-h ?\C-?)
(setq-default show-trailing-whitespace t)

;; (require 'undo-tree)
;; (global-undo-tree-mode)

;; Line number
(require 'linum)
(global-linum-mode 1)
;; Setting for Mac

(add-to-list 'load-path "~/.emacs.d/lisp")

;; Modifier Keys
(setq mac-option-modifier 'meta)
(setq mac-right-option-modifier 'meta)
(setq mac-command-modifier 'super)
(setq mac-right-command-modifier 'super)

;; Command-T to open Font Panel
(global-set-key (kbd "s-t") 'mac-font-panel-mode)

(add-to-list 'auto-mode-alist '("\\.scpt\\'" . apples-mode))
(add-to-list 'auto-mode-alist '("\\.tex\\'" . latex-mode))

;; Open File
(defun open (filename)
  (interactive "fOpen file: ")
  (shell-command (concat "open " filename)))

;; Beep
;;(setq visible-bell t)
(setq ring-bell-function 'ignore)


;; LaTeX
(load "latex2pdf.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (manoj-dark)))
 '(fringe-mode 0 nil (fringe))
 '(inhibit-startup-screen t)
 '(menu-bar-mode t)
 '(safe-local-variable-values (quote ((tex-master . "/home/imaitakashi/test.tex"))))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(transient-mark-mode (quote (only . t))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
