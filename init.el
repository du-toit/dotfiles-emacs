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
;; Load the core configuration
;; -------------------------------------------------------------------------------------------------------

(require 'core-path)
(require 'core-theme)

;; -------------------------------------------------------------------------------------------------------

(provide 'init)

;;; init.el ends here
