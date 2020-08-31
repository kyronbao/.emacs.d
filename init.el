

;; load setting directory
(add-to-list 'load-path "~/.emacs.d/mine/")

;; require auto-save.el
(require 'auto-save)
(auto-save-enable) 
(setq auto-save-slient t)
;; doesnot save ## file
(setq auto-save-default nil)
;; 不保存~结尾的备份文件
(setq make-backup-files nil)


(global-set-key (kbd "C-z") 'undo)

;; redefine keys
;; unbind org-mode C-c
(add-hook 'org-mode-hook
          (lambda()
            (local-unset-key (kbd "C-c"))))

;; copy selected or copy one line 
(global-set-key "\C-c"
(lambda ()
  (interactive)
  (if mark-active
      (kill-ring-save (region-beginning)
      (region-end))
    (progn
     (kill-ring-save (line-beginning-position)
     (line-end-position))
     (message "copied line")))))

;; cut selected or cut one line
(global-set-key "\C-k"
(lambda ()
  (interactive)
  (if mark-active
      (kill-region (region-beginning)
      (region-end))
  (progn
     (kill-whole-line 1)
     (message "killed line")))))
;; paste
(global-set-key (kbd "C-v") 'yank)

;; cancel line changed arraw
(global-visual-line-mode 1)

(menu-bar-mode -1)
(global-set-key [f10] 'menu-bar-mode)

(tool-bar-mode -1)

(scroll-bar-mode -1)

;; cancel alert bell
(setq ring-bell-function 'ignore)


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
(load "custom-dired.el")

;; Markdown mode
;; https://jblevins.org/projects/markdown-mode/
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (markdown-mode ##))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
