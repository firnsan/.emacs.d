;; -*- coding: utf-8 -*-
(setq emacs-load-start-time (current-time))
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))


;;----------------------------------------------------------------------------
;; Which functionality to enable (use t or nil for true and false)
;;----------------------------------------------------------------------------
(setq *macbook-pro-support-enabled* t)
(setq *is-a-mac* (eq system-type 'darwin))
(setq *is-carbon-emacs* (and *is-a-mac* (eq window-system 'mac)))
(setq *is-cocoa-emacs* (and *is-a-mac* (eq window-system 'ns)))
(setq *win32* (eq system-type 'windows-nt) )
(setq *cygwin* (eq system-type 'cygwin) )
(setq *linux* (or (eq system-type 'gnu/linux) (eq system-type 'linux)) )
(setq *unix* (or *linux* (eq system-type 'usg-unix-v) (eq system-type 'berkeley-unix)) )
(setq *linux-x* (and window-system *linux*) )
(setq *xemacs* (featurep 'xemacs) )
(setq *emacs23* (and (not *xemacs*) (or (>= emacs-major-version 23))) )
(setq *emacs24* (and (not *xemacs*) (or (>= emacs-major-version 24))) )

;----------------------------------------------------------------------------
; Functions (load all files in defuns-dir)
; Copied from https://github.com/magnars/.emacs.d/blob/master/init.el
;----------------------------------------------------------------------------
(setq defuns-dir (expand-file-name "~/.emacs.d/defuns"))
(dolist (file (directory-files defuns-dir t "\\w+"))
  (when (file-regular-p file)
      (load file)))
;----------------------------------------------------------------------------
; Load configs for specific features and modes
;----------------------------------------------------------------------------
(require 'init-modeline)

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
(require 'cl-lib)
(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el

;; win32 auto configuration, assuming that cygwin is installed at "c:/cygwin"
(condition-case nil
    (when *win32*
      (setq cygwin-mount-cygwin-bin-directory "c:/cygwin/bin")
      (require 'setup-cygwin)
      ;; better to set HOME env in GUI
      ;; (setenv "HOME" "c:/cygwin/home/someuser")
      )
  (error
   (message "setup-cygwin failed, continue anyway")
   ))

(require 'init-elpa)
(require 'init-exec-path) ;; Set up $PATH
(require 'init-frame-hooks)
;; any file use flyspell should be initialized after init-spelling.el
;; actually, I don't know which major-mode use flyspell.
(require 'init-spelling)
(require 'init-xterm)
;;Mac OS按键
;;(require 'init-osx-keys)
(require 'init-gui-frames)
(require 'init-maxframe)
;;代理？
;;(require 'init-proxies)
(require 'init-dired)
(require 'init-isearch)
(require 'init-uniquify)
(require 'init-ibuffer)
(require 'init-flymake)
(require 'init-artbollocks-mode)
;;快速打开最近的文件
(require 'init-recentf)
(require 'init-ido)
(require 'init-smex)
;;我的emacs24加载helm会发生错误
;;(if *emacs24* (require 'init-helm))
;;hippie-expand太傻了，老是补齐成文件名,还老是让你输入tag文件名
;;(require 'init-hippie-expand)
(require 'init-windows)
(require 'init-sessions)
(require 'init-fonts)
(require 'init-git)

;;crontab是一种文件
;;(require 'init-crontab)
;;texttile一种markdown
;;(require 'init-textile)

(require 'init-markdown)
(require 'init-csv)
;;不用erlang
;;(require 'init-erlang)
(require 'init-javascript)
(require 'init-sh)
(when *emacs24*
  (require 'init-org)
  (require 'init-org-mime))
(require 'init-css)
(require 'init-python-mode)
(require 'init-ruby-mode)
(require 'init-lisp)
(require 'init-elisp)
(require 'init-cmake-mode)
(require 'init-csharp-mode)
(require 'init-cc-mode)
;;简写的html
;;(require 'init-haml)
;;haskell一种函数式语言
;;(require 'init-haskell)


(require 'init-yasnippet)
;; Use bookmark instead
;;一种快速写html和markdown的东西
;;(require 'init-zencoding-mode)
;;Yet Another Ri Interface，一种ruby ri文档工具
;;(require 'init-yari)
;;与gdb交互的
;;(require 'init-gud)
(require 'init-semantic)

;;显示行号
(require 'init-linum-mode)

;;印象中w3m连百度首页打开都卡
;;(require 'init-emacs-w3m)
;;汉字输入法？？
;;(require 'init-eim)
;;不知道是啥
;;(require 'init-which-func)
;;不知道是啥
;;(require 'init-keyfreq)
;; (require 'init-gist)
;;说话人功能，太geek了吧
;;(require 'init-emacspeak)
;;pomodoro管理作息时间
;;(require 'init-pomodoro)
;;控制firefox，还不如鼠标控制
;;(require 'init-moz)

;;不开gtags没什么不好吧
;;(require 'init-gtags)

;; use evil mode (vi key binding)
;;(require 'init-evil)
;;misc不知道干啥的,只知道会把背景变成深色，太大了
;;(require 'init-misc)
(require 'init-ctags)
(require 'init-ace-jump-mode)
;;Bbdb是addressbook,不用
;;(require 'init-bbdb)
;;Gnus Network User Services,和email有关的
;;(require 'init-gnus)

;; itune cannot play flac, so I use mplayer+emms instead (updated, use mpd!)
;;(require 'init-emms)
;;暂时不用lua
;;(require 'init-lua-mode)
(require 'init-doxygen)
;;workgroup是干啥的
;;(require 'init-workgroups2)
(require 'init-move-window-buffer)
(require 'init-term-mode)
(require 'init-web-mode)
(require 'init-sr-speedbar)
(require 'init-smartparens)
(require 'init-slime)

;;company好搓啊
(when *emacs24* (require 'init-company))
(require 'init-stripe-buffer)

;;听说是web服务器，我要来干啥
;;(require 'init-elnode)


;;=====================以下是我自己加的===========================

;;加载linux设置,含有server,工作目录设置
(load "init-linux.el")

;;加载win设置,含有server,工作目录设置
;;(load "init-win.el")


;;读取按键配置
(load "init-kbd.el")


;;加载tabbar
;;为什么我这样子写不行啊(require 'init-tabbar)
(load "init-tabbar.el")


;;加载缩进配置
(load "init-indent.el")

;;加载ecb,原来ecb是需要cedet的。。。
;;(load "init-ecb.el")

;;(load "init-auto-complete.el")

;;====================以上是我自己加的==============================

;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;; expand-file-name要绝对路径啊?
;;----------------------------------------------------------------------------
(if (file-readable-p (expand-file-name "~/.emacs.d/custom.el"))
     (load-file (expand-file-name "~/.emacs.d/custom.el")))

;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-local" containing personal settings
;;----------------------------------------------------------------------------
(require 'init-local nil t)


;;----------------------------------------------------------------------------
;; Locales (setting them earlier in this file doesn't work in X)
;;----------------------------------------------------------------------------
;(require 'init-locales) ;does not work in cygwin


(when (require 'time-date nil t)
   (message "Emacs startup time: %d seconds."
    (time-to-seconds (time-since emacs-load-start-time)))
   )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "~/.emacs.bmk")
 '(safe-local-variable-values (quote ((emacs-lisp-docstring-fill-column . 75) (ruby-compilation-executable . "ruby") (ruby-compilation-executable . "ruby1.8") (ruby-compilation-executable . "ruby1.9") (ruby-compilation-executable . "rbx") (ruby-compilation-executable . "jruby")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(window-numbering-face ((t (:foreground "DeepPink" :underline "DeepPink" :weight bold))) t))
;;; Local Variables:
;;; no-byte-compile: t
;;; End:
(put 'erase-buffer 'disabled nil)
