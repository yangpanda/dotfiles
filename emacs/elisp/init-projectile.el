(straight-use-package 'projectile)
(straight-use-package 'rg)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(setq projectile-project-search-path '("~/code/" "~/.emacs.d"))

(provide 'init-projectile)
