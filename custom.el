
;;加载linux设置,含有server,工作目录设置
(load "init-linux.el")

;;加载win设置,含有server,工作目录设置
;;(load "init-win.el")


;;=============================================
;;读取按键配置
(load "init-kbd.el")


;;加载tabbar
;;为什么我这样子写不行啊(require 'init-tabbar)
(load "init-tabbar.el")


;;(load "init-auto-complete.el")


;;添加搜索目录
(add-to-list 'load-path "~/emacs")



;;将~备份统一保存到一文件夹
(setq backup-directory-alist (quote (("." . "~/.backups"))))


;;解决mark-set 选定（也会高亮选定区域）一个区域 然后按 backspace却只是删除光标最后所在位置的前面一个字符
;;(delete-selection-mode 1)


;;设置窗口位置(在chenbin的配置下失效了)
;;(setq default-frame-alist
;;      '((top . 0) (left . 400) (height . 41) (width . 100)))


;; 以 y/n代表 yes/no
;;(fset 'yes-or-no-p 'y-or-n-p) 


;; 支持emacs和外部程序的粘贴
;;(setq x-select-enable-clipboard t) 

;; 在标题栏提示你目前在什么位置
(setq frame-title-format "%b@emacs")  

;;鼠标避开光标。
(mouse-avoidance-mode 'animate)


;;==============================================================
;;gdb-UI配置
;;==============================================================
(setq gdb-many-windows t)
;;(load-library "multi-gud.el")不用这两行也可以
;;(load-library "multi-gdb-ui.el")




;;用tab缩进
;;set indentation level
(setq-default c-basic-offset 4)
;;设置tab宽度
(setq default-tab-width 4)
;;用tab缩进
(setq-default indent-tabs-mode t)
;;If is t, always reindents the current line and does nothing else. 
;;(setq-default tab-always-indent nil)
;;hook住，防止indent-tabs-mode变成nil
(add-hook 'c-mode-common-hook
   (lambda () (setq indent-tabs-mode t)))
(add-hook 'c++-mode-common-hook
   (lambda () (setq indent-tabs-mode t)))

;;(defun my-c-mode-common-hook()
;;  (setq tab-width 4 indent-tabs-mode nil)

;;(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
;;(defun my-c++-mode-hook()
;;  (setq tab-width 4 indent-tabs-mode nil)
;;  (c-set-style "stroustrup")
;;  (define-key c++-mode-map [f3] 'replace-regexp)
;;)




;;==============================================================
;;ecb配置
;;==============================================================
(add-to-list 'load-path "~/emacs/ecb-2.40")
;;(require 'ecb)
;;开启ecb用,M-x:ecb-activate
(require 'ecb-autoloads)
;;自动启动ecb并且不显示每日提示
;;(require 'ecb)
;;(setq ecb-auto-activate t)
(setq ecb-tip-of-the-day nil)

(require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )



