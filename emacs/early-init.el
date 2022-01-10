(setq package-enable-at-startup nil)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(dolist (item (list
	       '(font . "Fira Mono-12")
	       '(width . 120)
	       '(height . 48)))
  (add-to-list 'default-frame-alist item))
