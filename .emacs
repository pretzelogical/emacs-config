(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tango-dark))
 '(inhibit-startup-screen t)
 '(js-indent-level 2)
 '(js2-mode-indent-ignore-first-tab nil)
 '(org-indent-indentation-per-level 0)
 '(package-selected-packages
	 '(json-mode devdocs helm-youtube helm markdown-mode smartparens yasnippet-classic-snippets w3m yasnippet-snippets yasnippet tern-context-coloring tern-auto-complete tern emmet-mode js2-mode))
 '(smartparens-global-mode nil)
 '(tab-always-indent t)
 '(yas-global-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;packages
(add-to-list 'auto-mode-alist '("\\.js" . js2-mode)) ;;enable js2-mode to js files
(add-to-list 'auto-mode-alist '("\\.json" . json-mode))
(add-to-list 'load-path "~/.emacs.d/packages/");;add packages folder to load path

(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)

;;prettier
(require 'prettier-js)
(add-hook 'js2-mode-hook 'prettier-js-mode)
(add-hook 'js-mode-hook 'prettier-js-mode)
(add-hook 'web-mode-hook 'prettier-js-mode)

(setq-default electric-indent-inhibit t)

;;autocomplete
(add-hook 'js2-mode-hook 'auto-complete-mode)
(add-hook 'emacs-lisp-mode-hook 'auto-complete-mode)

;;tern
(eval-after-load 'context-coloring
  '(tern-context-coloring-setup))
(add-hook 'js2-mode-hook 'tern-mode)

;;yassssss
(add-hook 'html-mode-hook 'yas-minor-mode)
(add-hook 'js2-mode-hook 'yas-minor-mode)
(add-hook 'css-mode-hook  'yas-minor-mode)

;;custom numpad functions
(global-set-key (kbd "<kp-0>" ) 'other-window)
(global-set-key (kbd "<kp-1>" ) 'tool-bar-mode)
(global-set-key (kbd "<kp-2>" ) 'menu-bar-mode)
(global-set-key (kbd "<kp-3>" ) 'split-window-below)
(global-set-key (kbd "<kp-6>") 'split-window-right)
(global-set-key (kbd "<kp-9>" ) 'yas-insert-snippet)

