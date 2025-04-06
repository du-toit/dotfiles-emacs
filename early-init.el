;; -------------------------------------------------------------------
;; Settings - Frame
;; -------------------------------------------------------------------

;; Setting the face in here prevents flashes of
;; color as the theme gets activated

(setq default-frame-alist '(
      (background-color . "#2e3440")
      (ns-appearance . dark)
      (ns-transparent-titlebar . t)))

;; -------------------------------------------------------------------
;; Settings - Buffer
;; -------------------------------------------------------------------

;; Removes the emacs "welcome" page or whatever the fuck it is
(setq inhibit-startup-message t)

;; -------------------------------------------------------------------

(provide 'early-init)

;;; early-init.el ends here
