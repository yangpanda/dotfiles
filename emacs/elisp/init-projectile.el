(use-package projectile
  :straight t
  :init
  (setq projectile-project-search-path '("~/code/"))
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :config
  (projectile-mode +1))

(use-package rg
  :straight t)

(provide 'init-projectile)
