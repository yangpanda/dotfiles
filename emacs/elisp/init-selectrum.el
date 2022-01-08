(straight-use-package 'selectrum)
(straight-use-package 'selectrum-prescient)

(selectrum-mode +1)
(setq selectrum-show-indices t)

(selectrum-prescient-mode +1)
(prescient-persist-mode +1)

(provide 'init-selectrum)
