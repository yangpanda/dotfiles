(use-package smartparens
  :straight t
  :hook (prog-mode . turn-on-smartparens-strict-mode)
  :config
  (show-smartparens-global-mode t))

(provide 'init-edit)
