(straight-use-package 'company)
;; (straight-use-package 'company-posframe)
(straight-use-package 'company-prescient)
(straight-use-package 'yasnippet)

(add-hook 'prog-mode-hook 'company-mode)
;;(add-hook 'company-mode-hook 'company-posframe-mode)
(company-prescient-mode +1)

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

(provide 'init-completion)
