(defun open-notes ()
  "open notes directory"
  (interactive)
  (dired "~/notes"))

(global-set-key (kbd "<f1>") 'open-notes)

(provide 'init-start)
