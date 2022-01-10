(straight-use-package
 '(yaml-mode :type git
	     :host github
	     :repo "yoshiki/yaml-mode"))

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.y[a]ml\\'" . yaml-mode))

(provide 'init-yaml)
