(use-package tree-sitter
  :straight t
  :config
  (add-to-list 'tree-sitter-load-path
	       (expand-file-name "lib" user-emacs-directory))
  (global-tree-sitter-mode))

(use-package tree-sitter-langs
  :straight t
  :requires tree-sitter
  :hook (tree-sitter-after-on . tree-sitter-hl-mode))

(tree-sitter-load 'elisp "elisp")
(add-to-list 'tree-sitter-major-mode-language-alist '(emacs-lisp-mode . elisp))

(tree-sitter-load 'vue "vue")
(add-to-list 'tree-sitter-major-mode-language-alist '(web-mode . vue))

(provide 'init-tree-sitter)
