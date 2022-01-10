(straight-use-package
 '(xah-fly-keys :type git
		:host github
		:repo "xahlee/xah-fly-keys"))

(require 'xah-fly-keys)
(xah-fly-keys-set-layout "qwerty") ; required
(xah-fly-keys +1)

(define-key xah-fly-c-keymap (kbd "j") 'consult-recent-file)

(add-hook 'selectrum-mode-hook 'xah-fly-insert-mode-activate)

(provide 'init-modal)
