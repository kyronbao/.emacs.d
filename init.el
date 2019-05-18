
;; 去掉换行的箭头
(global-visual-line-mode 1)

  (menu-bar-mode -1)
  (global-set-key [f10] 'menu-bar-mode)         ;;打开/关闭菜单

  (tool-bar-mode -1)

  (scroll-bar-mode -1)    ;;滚动条

(setq ring-bell-function 'ignore) ;; 去掉提示音



;; define open file

(global-set-key (kbd "\e\ei")
		(lambda () (interactive) (find-file "~/.emacs.d/init.el")))
(global-set-key (kbd "\e\ew")
		(lambda () (interactive) (find-file "~/wiki/")))
(global-set-key (kbd "\e\em")
		(lambda () (interactive) (find-file "~/mine/")))

;; Theme
;; https://github.com/cfraz89/arc-dark-theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/mine/arc-dark-theme/")
(load-theme 'arc-dark t)

;; Custom dired colume
;; Hide some colume
;; https://emacs.stackexchange.com/questions/35676/customize-direds-display
(add-to-list 'load-path "~/.emacs.d/mine/")
(load "custom-dired.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (##))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
