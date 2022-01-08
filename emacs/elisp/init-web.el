(straight-use-package 'web-mode)
(straight-use-package
 '(highlight-matching-tag :type git
			  :host github
			  :repo "manateelazycat/highlight-matching-tag"))

;;; web-mode
(setq-default
 js-indent-level 2
 css-indent-offset 2)

(setq
 web-mode-markup-indent-offset 2
 web-mode-code-indent-offset 2
 web-mode-css-indent-offset 2
 web-mode-script-padding 2
 web-mode-auto-pairs nil)

(dolist (item (list
	       '("\\.html?\\'" . web-mode)
	       '("\\.css?\\'". web-mode)
	       '("\\.vue?\\'" . web-mode)))
  (add-to-list 'auto-mode-alist item))


;;; highlight-matching-tag
(require 'highlight-matching-tag)
(highlight-matching-tag +1)

(provide 'init-web)
