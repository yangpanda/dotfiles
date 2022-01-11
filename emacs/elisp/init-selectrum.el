(use-package selectrum
  :straight t
  :init
  (setq selectrum-show-indices t)
  :config
  (selectrum-mode +1))

(use-package selectrum-prescient
  :straight t
  :requires selectrum
  :config
  (selectrum-prescient-mode +1)
  (prescient-persist-mode +1))

(provide 'init-selectrum)
