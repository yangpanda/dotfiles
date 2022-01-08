(straight-use-package 'posframe)

(straight-use-package
 '(rime :type git
	:host github
	:repo "DogLooksGood/emacs-rime"
	:files ("*.el" "Makefile" "lib.c")))

(setq default-input-method "rime")

(setq
 rime-show-candidate 'posframe
 rime-posframe-style 'vertical
 rime-disable-predicates '(meow-normal-mode-p
                           meow-motion-mode-p
                           meow-keypad-mode-p
			   rime-predicate-punctuation-line-begin-p
			   rime-predicate-space-after-cc-p
			   rime-predicate-current-uppercase-letter-p
			   rime-predicate-current-input-punctuation-p)
 rime-inline-predicates '(rime-predicate-space-after-cc-p
                          rime-predicate-current-uppercase-letter-p))

(provide 'init-rime)
