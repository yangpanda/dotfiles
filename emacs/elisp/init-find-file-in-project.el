(straight-use-package
 '(find-file-in-project :type git
			:host github
			:repo "redguardtoo/find-file-in-project"))

(require 'find-file-in-project)

(provide 'init-find-file-in-project)
