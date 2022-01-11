(use-package web-mode
  :straight t
  :init
  (setq-default
   js-indent-level 2
   css-indent-offset 2)

  (setq
   web-mode-markup-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-script-padding 2
   web-mode-auto-pairs nil
   web-mode-script-padding 0
   web-mode-style-padding 0)
  :config
  (dolist (item (list
		 '("\\.html?\\'" . web-mode)
		 '("\\.css?\\'". web-mode)
		 '("\\.vue?\\'" . web-mode)))
    (add-to-list 'auto-mode-alist item)))


(use-package highlight-matching-tag
  :straight (highlight-matching-tag :type git
				    :host github
				    :repo "manateelazycat/highlight-matching-tag")
  :config
  (highlight-matching-tag +1))

(provide 'init-web)
