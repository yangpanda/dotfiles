(global-display-line-numbers-mode t)
(global-hl-line-mode t)


(straight-use-package 'solarized-theme)
(load-theme 'solarized-light t)

;; (straight-use-package
;;  '(lazycat-theme :type git
;; 		 :host github
;; 		 :repo "manateelazycat/lazycat-theme"))
(straight-use-package
 '(awesome-tray :type git
		 :host github
		 :repo "manateelazycat/awesome-tray"))

;; (require 'lazycat-theme)
;; (lazycat-theme-load-dark)

(require 'awesome-tray)
(awesome-tray-mode +1)

(provide 'init-theme)
