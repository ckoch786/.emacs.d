(require 'use-package) 			; This must be at the top
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
;; TODO Error (auto-save): Auto-saving init.el: Opening output file: No such file or directory, c:/Users/ckoch/.emacs.d/auto-save-list/!/Users/ckoch/.emacs.d/#c!!Users!ckoch!.emacs.d!init.el# Disable showing Disable logging
;; Figure out why that is being added to the *Warnings* buffer
;; TODO add Window rules for disruptive buffers such as *Warnings*
;; (setq auto-save-file-name-transforms
;;       '(("." "~/.emacs.d/auto-save-list/" t)))

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

;;; Packages ------------------
;;; csharp-mode
;; Windows setup
;; On my personal laptop this is set to ~/Users/ckoch
;; On my work machine I believe it is set to ~/Users/ckoch/OneDrive - .../Documents/
;; because I have been experimenting with keeping all my "documents" backedup with OneDrive
;; TODO cleanup work and personal OneDrive and other cloud storage solutions.
;; TODO check for python3, magit requires it as a dependency for some features.


;; Not needed because added to site-lisp leaving until I am sure that things load
;; properly, probably still need some addititional setup to get things working
;;(load "~/.emacs.d/ckoch786/csharp-mode/csharp-compilation.el")
;;(load "~/.emacs.d/ckoch786/csharp-mode/csharp-mode.el")

;; (require 'csharp-mode)
;; (defun ckoch786-csharp-mode-setup ()
;;   (lsp-mode)
;;   (company-mode)
;;   (flycheck-mode))

(require 'lsp-mode)
(add-hook 'prog-mode-hook #'lsp)

;; TODO setup everything using use-package
;; TODO update this to only hook in csharp only for now trying to
;; focus on one thing at a time.
;; (use-package lsp-mode
;;   :hook (prog-mode . lsp))
;;   :init)

;;; sharper-mode - forking to add some of the new commands for creating projects.
;; downloaded dotnet7
(require 'sharper)				       ; Currently being auto loaded from site-lisp
(global-set-key (kbd "C-c n") 'sharper-main-transient)  ; For "n" for "dot NET"


;;; Info clips
;; TODO use bookmarks to keep track of this instead?
;;;; from (emacs)Lisp Libraries
;;    Once you put your library in a directory where Emacs can find and
;; load it, you may wish to make it available at startup.  This is useful
;; when the library defines features that should be available automatically
;; on demand, and manually loading the library is thus inconvenient.  In
;; these cases, make sure the library will be loaded by adding suitable
;; forms to your init file: either ‘load’ or ‘require’ (if you always need
;; to load the library at startup), or ‘autoload’ if you need Emacs to load
;; the library when some command or function is invoked.  For example:

;;       ;; Loads my-shining-package.elc unconditionally.
;;       (require 'my-shining-package)
;;       ;; Will load my-shining-package.elc when my-func is invoked.
;;       (autoload 'my-func "my-shining-package")

;;;; From same info page?
;;     "you can add a directory to it by putting a line like this in your init
;; file (*note Init File::):

;;      (add-to-list 'load-path "/path/to/my/lisp/library")

;;    It is customary to put locally installed libraries in the ‘site-lisp’
;; directory that is already in the default value of ‘load-path’, or in
;; some subdirectory of ‘site-lisp’.  This way, you don’t need to modify
;; the default value of ‘load-path’."
