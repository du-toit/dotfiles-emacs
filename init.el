;; -------------------------------------------------------------------------------------------------------
;; Performance Tweaks
;; -------------------------------------------------------------------------------------------------------

;; Don't GC during startup to save time
(unless (bound-and-true-p my-computer-has-smaller-memory-p)
  (setq gc-cons-percentage 0.6)
  (setq gc-cons-threshold most-positive-fixnum))

;; Light weight mode, fewer packages are used.
(setq my-lightweight-mode-p (and (boundp 'startup-now) (eq startup-now t)))

;; Adjust garbage collection threshold for early startup
(setq gc-cons-threshold (* 128 1024 1024))

;; Process performance tuning
(setq read-process-output-max (* 4 1024 1024))
(setq process-adaptive-read-buffering nil)

;; General performance tuning
(setq jit-lock-defer-time 0)

;; Always load newest byte code
(setq load-prefer-newer t)

;; -------------------------------------------------------------------------------------------------------
;; Define our Emacs configuration structure
;; -------------------------------------------------------------------------------------------------------

(defconst directory-root (file-name-directory user-emacs-directory)
  "The root directory of the Emacs configuration.")

(defconst directory-core (concat directory-root "core")
  "Global settings and core functionality.")

(defconst directory-settings (concat directory-root "settings")
  "Language-specific and package-specific setups and tweaks.")

;; -------------------------------------------------------------------------------------------------------
;; Add our configuration directories to our Emacs load path
;; -------------------------------------------------------------------------------------------------------

(add-to-list 'load-path directory-core)
(add-to-list 'load-path directory-settings)

;; -------------------------------------------------------------------------------------------------------
;; Auto-generated code for packages
;; -------------------------------------------------------------------------------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(company lsp-mode rust-mode treemacs-evil treemacs-icons-dired
	     treemacs-magit treemacs-persp treemacs-projectile
	     treemacs-tab-bar)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack" :foundry "SRC" :slant normal :weight regular :height 113 :width normal)))))

;; -------------------------------------------------------------------------------------------------------
;; Load the core configuration
;; -------------------------------------------------------------------------------------------------------

(require 'core-path)
(require 'core-theme)
(require 'core-package)
(require 'core-fmt)
(require 'core-treemacs)

;; -------------------------------------------------------------------------------------------------------
;; Load the all language configurations
;; -------------------------------------------------------------------------------------------------------

;; init-lisp.el must be initialised first !
(require 'init-lsp)
(require 'init-rust)

;; -------------------------------------------------------------------------------------------------------

;;; init.el ends here
