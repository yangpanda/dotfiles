(add-to-list 'load-path (expand-file-name "extensions/eaf" user-emacs-directory))

(require 'eaf)

(require 'eaf-browser)
(require 'eaf-file-browser)
(require 'eaf-file-manager)
(require 'eaf-image-viewer)
(require 'eaf-markdown-previewer)
(require 'eaf-mindmap)
(require 'eaf-music-player)
(require 'eaf-org-previewer)
(require 'eaf-pdf-viewer)
(require 'eaf-rss-reader)
(require 'eaf-video-player)

(setq eaf-browser-continue-where-left-off t)
(setq eaf-browser-enable-adblocker t)
(setq browse-url-browser-function 'eaf-open-browser)
(setq eaf-proxy-type "http")
(setq eaf-proxy-host "127.0.0.1")
(setq eaf-proxy-port "7890")

(provide 'init-eaf)
