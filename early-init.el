;; -------------------------------------------------------------------
;; Window Settings
;; -------------------------------------------------------------------

;; Setting the face in here prevents flashes of
;; color as the theme gets activated
(setq default-frame-alist '(
      (background-color . "#282a36")
      (ns-appearance . dark)
      (ns-transparent-titlebar . t)))

;; Constant height & width of the frame / window
(defconst HEIGHT '(height . 42))
(defconst WIDTH  '(width  . 140))

(add-to-list 'initial-frame-alist HEIGHT)
(add-to-list 'initial-frame-alist WIDTH)

(add-to-list 'default-frame-alist HEIGHT)
(add-to-list 'default-frame-alist WIDTH)

;; -------------------------------------------------------------------
;; Performance tweaks
;; -------------------------------------------------------------------

(defvar my-computer-has-smaller-memory-p nil
  "Installing & Compiling many packages could cost too much memory.")

;; ~10% speed up of startup for my configuration
(unless my-computer-has-smaller-memory-p
  (setq gc-cons-percentage 0.6)
  (setq gc-cons-threshold most-positive-fixnum))

(setq package-enable-at-startup nil)

;; -------------------------------------------------------------------
;; Misc Display settings
;; -------------------------------------------------------------------

;; removes the emacs "welcome" page or whatever the fuck it is
(setq inhibit-startup-message t)

;; disable the toolbar
(tool-bar-mode -1)

;; -------------------------------------------------------------------

(provide 'early-init)

;;; early-init.el ends here
