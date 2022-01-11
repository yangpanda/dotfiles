(global-display-line-numbers-mode t)
(global-hl-line-mode t)

(use-package solarized-theme
  :straight t
  :config
  (load-theme 'solarized-light t))


(use-package awesome-tray
  :straight (awesome-tray :type git
			  :host github
			  :repo "manateelazycat/awesome-tray")
  :config
  (awesome-tray-mode +1))

(provide 'init-theme)
