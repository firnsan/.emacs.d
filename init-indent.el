
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

