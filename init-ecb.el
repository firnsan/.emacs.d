


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



