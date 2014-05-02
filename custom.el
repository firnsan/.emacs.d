

;;添加搜索目录
;;(add-to-list 'load-path "~/emacs")



;;将~备份统一保存到一文件夹
(setq backup-directory-alist (quote (("." . "~/.backups"))))


;;解决mark-set 选定（也会高亮选定区域）一个区域 然后按 backspace却只是删除光标最后所在位置的前面一个字符
(delete-selection-mode 1)


;;设置窗口位置(在chenbin的配置下失效了)
(setq default-frame-alist
      '((top . 0) (left . 400) (height . 41) (width . 100)))


;; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p) 


;; 支持emacs和外部程序的粘贴,chenbin的配置已经提供
;;(setq x-select-enable-clipboard t) 

;; 在标题栏提示你目前在什么位置
(setq frame-title-format "%b@emacs")  

;; 去掉工具栏
;;(tool-bar-mode nil)chenbin的配置已经提供

;;去掉菜单栏
;;(menu-bar-mode nil)为什么用了chenbin的配置后这个不能使了

;;鼠标避开光标。
(mouse-avoidance-mode 'animate)


;;==============================================================
;;gdb-UI配置
;;==============================================================
(setq gdb-many-windows t)
;;(load-library "multi-gud.el")不用这两行也可以
;;(load-library "multi-gdb-ui.el")



