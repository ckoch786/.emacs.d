;;; Windows setup
;; On my personal laptop this is set to ~/Users/ckoch
;; On my work machine I believe it is set to ~/Users/ckoch/OneDrive - .../Documents/
;; because I have been experimenting with keeping all my "documents" backedup with OneDrive
;; TODO cleanup work and personal OneDrive and other cloud storage solutions.
;; TODO check for python3, magit requires it as a dependency for some features.
(let ((home (getenv "HOME")))
  (when (not home)
    (message "Must set $env:HOME")))

;;; Add melpa
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

;;; Mode line settings
(column-number-mode 1)
(display-time-mode 1)

;;; General settings
(tool-bar-mode -1)


;;; Aliases
(defalias 'yes-or-no-p 'y-or-n-p)
(defalias 'list-buffers 'ibuffer)

;;; custom-set-variables
(setq custom-file "~/.emacs.d/emacs-custom.el")
(load custom-file 'noerror)

;;; History and backups
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq auto-save-file-name-transforms
      '(("." "~/.emacs.d/auto-save-list/" t)))

(recentf-mode t)

(setq savehist-file "~/.emacs.d/savehist")
(savehist-mode 1)
(setq history-length t
      history-delete-duplicates t)
(setq savehist-save-minibuffer-history 1
      savehist-additional-variables
      '(kill-ring
	search-ring
	regexp-search-ring))

;;; Packages
;; magit installed via package.el
;; I attempted to install magit from just elpa but ran into problems
;; so going with a second attempt with melpa

;;Packages to install: 6
;;(powershell-20220805.1712
;; markdown-mode-20230102.9
;; magit-3.3.0
;; lsp-mode-20221231.746
;; go-mode-20221228.1706
;; csharp-mode-20221126.2005
;; sharper-mode ;; dotnet cli wrapper that uses Transient
;; web-mode
;; use-package)
;; lsp-mode
;;; lsp-mode optional dependencies:
;; yasnippet-0.14.0
;; company-20230106.54
;; lsp-ui-20220924.850
;; lsp-treemacs-20221001.1958
;; dap-mode-20230101.757


;;; csharp-mode
;; (defun ckoch786-csharp-mode-setup ()
;;   (lsp-mode)
;;   (company-mode)
;;   (flycheck-mode))

(require 'lsp-mode)
(add-hook 'prog-mode-hook #'lsp)

;; TODO setup everything using use-package
;; (use-package lsp-mode
;;   :init)

;;; sharper-mode - forking to add some of the new commands for creating projects.
;; downloaded dotnet7
(load "~/.emacs.d/ckoch786/sharper/sharper.el")
(require 'sharper)
(global-set-key (kbd "C-c n") 'sharper-main-transient) ;; For "n" for "dot NET"
