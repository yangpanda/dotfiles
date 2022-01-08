(straight-use-package 'smartparens)

(require 'smartparens-config)

(dolist (hook (list
               'c-mode-common-hook
               'c-mode-hook
               'c++-mode-hook
               'java-mode-hook
               'emacs-lisp-mode-hook
               'sh-mode-hook
               'makefile-gmake-mode-hook
               'php-mode-hook
               'python-mode-hook
               'js-mode-hook
               'css-mode-hook
               'rust-mode-hook
               'lua-mode-hook
               'web-mode-hook
               'markdown-mode-hook
               'conf-toml-mode-hook
               ))
  (add-hook hook #'smartparens-mode))

(provide 'init-edit)
