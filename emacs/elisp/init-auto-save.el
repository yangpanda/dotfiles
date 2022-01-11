(setq make-backup-files nil
      auto-save-list-file-prefix nil
      auto-save-default nil)

(use-package auto-save
  :straight (auto-save :type git
		       :host github
		       :repo "manateelazycat/auto-save")
  :init
  (setq auto-save-silent t
	auto-save-delete-trailing-whitespace t)
  :config
  (setq auto-save-disable-predicates
	'((lambda ()
	    (string-suffix-p
	     "gpg"
	     (file-name-extension (buffer-name)) t))))
  (auto-save-enable))

(provide 'init-auto-save)
