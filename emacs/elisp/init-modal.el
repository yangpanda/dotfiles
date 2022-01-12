(defun ryo-enter ()
  "Enter normal mode"
  (interactive)
  (ryo-modal-mode 1))

(use-package ryo-modal
  :straight t
  :commands ryo-modal-mode
  :bind ("<escape>" . ryo-modal-mode)
  :after (consult grammatical-edit)
  :hook ((prog-mode dired-mode) . ryo-enter)
  :config
  (define-key ryo-modal-mode-map (kbd "SPC x") ctl-x-map)

  (ryo-modal-keys
   ("3" delete-other-windows)
   ("4" split-window-below)
   ("5" delete-char)
   (";" move-end-of-line)
   ("," other-window)
   ("a" execute-extended-command)
   ("c" kill-ring-save)
   ("d" delete-backward-char)
   ("e" backward-kill-word)
   ("h" move-beginning-of-line)
   ("j" backward-char)
   ("k" next-line)
   ("i" previous-line)
   ("l" forward-char)
   ("r" kill-word)
   ("t" set-mark-command)
   ("n" isearch-forward)
   ("o" forward-word)
   ("u" backward-word)
   ("v" yank)
   ("x" kill-whole-line)
   ("y" undo)
   ("z" comment-line)
   )

  (ryo-modal-key
   "SPC" '(("SPC" ryo-modal-mode)
	   ("a" mark-whole-buffer)
	   ("b" consult-buffer)
	   ("c" (("p" projectile-command-map)))
           ("f" find-file)
	   ("h" beginning-of-buffer)
	   ("m" dired-jump)
	   ("n" end-of-buffer)
	   ("r" query-replace)
	   (";" save-buffer)
	   )))

(provide 'init-modal)
