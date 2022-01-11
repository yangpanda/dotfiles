(use-package posframe
  :straight t)

(use-package rime
  :straight (rime :type git
		  :host github
		  :repo "DogLooksGood/emacs-rime"
		  :files ("*.el" "Makefile" "lib.c"))
  :requires posframe
  :init
  (setq default-input-method "rime")
  :config
  (setq
   rime-show-candidate 'posframe
   rime-posframe-style 'vertical
   rime-disable-predicates '(meow-normal-mode-p
                             meow-motion-mode-p
                             meow-keypad-mode-p
			     ))
  (setq rime-inline-predicates '(rime-predicate-space-after-cc-p)))

;; rime-predicate-after-alphabet-char-p
;; rime-predicate-current-uppercase-letter-p
;; rime-predicate-current-input-punctuation-p

(provide 'init-rime)
