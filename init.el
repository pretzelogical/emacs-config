(add-to-list 'auto-mode-alist '("\\.js" . js2-mode)) ;;enable js2-mode to js files

(add-to-list 'load-path "~/.emacs.d/packages/");;add packages folder to load path

(setq inhibit-splash-screen t)

(require 'autopair)
(autopair-global-mode)
