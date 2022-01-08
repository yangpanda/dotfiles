(straight-use-package 'tree-sitter)
(straight-use-package 'tree-sitter-langs)

(require 'tree-sitter)
(require 'tree-sitter-langs)

(add-to-list 'tree-sitter-load-path
	     (expand-file-name "lib" user-emacs-directory))

(tree-sitter-load 'elisp "elisp")
(add-to-list 'tree-sitter-major-mode-language-alist '(emacs-lisp-mode . elisp))

(tree-sitter-load 'vue "vue")
(add-to-list 'tree-sitter-major-mode-language-alist '(web-mode . vue))


(global-tree-sitter-mode)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

(provide 'init-tree-sitter)
