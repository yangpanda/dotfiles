(use-package projectile
  :straight t
  :init
  (setq projectile-project-search-path '("~/code/"))
  :config
  (projectile-mode +1))

(use-package rg
  :straight t)

(provide 'init-projectile)
