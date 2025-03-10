
(use-package rust-mode
  :hook (rust-mode . lsp-deferred)
  :config
  (with-eval-after-load "lsp-mode"
    (add-to-list 'lsp-enabled-clients 'rust-analyzer)
   )
  :custom
  (rust-format-on-save t)
)

;(require 'rust-mode)

;; Always format on save
;(setq rust-format-on-save t)

;; Enable LSP for rust
;(add-hook 'rust-mode-hook #'lsp)

(provide 'init-rust)

;;; init-rust.el ends here
