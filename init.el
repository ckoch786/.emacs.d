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
(add-to-list 'package-archives
	     (cons "nongnu" (format "http%s://elpa.nongnu.org/nongnu/"
				    (if (gnutls-available-p) "s" ""))))
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;;; Evil
(require 'evil)
(evil-mode 1)

;;; electric-parens
(electric-pair-mode 1)

;;; Calendar
;; from google maps url 40.0169503,-83.1503162
(setq calendar-latitude 40.0
      calendar-longitude -83.1
      calendar-location-name "Hilliard, OH")
(setq calendar-time-zone -300
      calendar-standard-time-zone-name "EST"
      calendar-daylight-time-zone-name "EDT")

;;; World Clock
; TODO figure out the proper format for this and add Pakistan and Iowa
; to the list
; (setq zoneinfo-style-world-list
;       '(("America/Los_Angeles" "Seattle")
;  ("America/New_York" "New York")
;  ("Europe/London" "London")
;  ("Europe/Paris" "Paris")
;  ("Asia/Calcutta" "Bangalore")
;  ("Asia/Tokyo" "Tokyo")))

;;; Mode line settings
(column-number-mode 1)
(display-time-mode 1)

;;; General settings
(tool-bar-mode -1)
(auto-fill-mode 1)			; enable auto-fill globally,
					; TODO use mode hooks if this
					; gets in the way
;; TODO figure out how to filter out auto-save and other auto files
;; from find-file by default

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


;; Not needed because added to site-lisp leaving until I am sure that things load
;; properly, probably still need some addititional setup to get things working
;;(load "~/.emacs.d/ckoch786/csharp-mode/csharp-compilation.el")
;;(load "~/.emacs.d/ckoch786/csharp-mode/csharp-mode.el")

;; (require 'csharp-mode)
;; (defun ckoch786-csharp-mode-setup ()
;;   (lsp-mode)
;;   (company-mode)
;;   (flycheck-mode))

;;;; ivy
(use-package ivy
  :custom
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  :config(ivy-mode))

;; (require 'lsp-mode)
;; (add-hook 'prog-mode-hook #'lsp)

;; TODO setup everything using use-package
;; TODO update this to only hook in csharp only for now trying to
;; focus on one thing at a time.
;;;; lsp-mode
(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook ((csharp-mode . lsp)
	 (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package lsp-ui :commands lsp-ui-mode)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package dap-mode)
;;(use-package dap-csharp)
(use-package which-key
  :config
  (which-key-mode))
;;; sharper-mode - forking to add some of the new commands for creating projects.
;; downloaded dotnet7
;;(use-package sharper-mode)				       ; Currently being auto loaded from site-lisp
;;(global-set-key (kbd "C-c n") 'sharper-main-transient)  ; For "n" for "dot NET"


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
