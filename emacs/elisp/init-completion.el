(use-package company
  :straight t
  :init
  (setq
   company-begin-commands '(self-insert-command
                            backward-delete-char
                            sp-backward-delete-char)
   company-idle-delay 0
   company-tooltip-align-annotations t
   company-tooltip-width-grow-only t
   company-tooltip-idle-delay 0.4
   company-minimum-prefix-length 2
   company-dabbrev-downcase nil
   company-abort-manual-when-too-short t
   company-require-match nil
   company-global-modes '(not dired-mode dired-sidebar-mode)
   company-show-quick-access t
   company-format-margin-function 'company-vscode-dark-icons-margin)
  :hook (prog-mode . global-company-mode))

(use-package company-prescient
  :straight t
  :requires (company)
  :config
  (company-prescient-mode +1))

(provide 'init-completion)
