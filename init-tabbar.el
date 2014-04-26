;;===============================================================
;;添加tabbar实现类似于浏览器的页签
;;===============================================================
(add-to-list 'load-path "~/emacs/tabbar")
(require 'tabbar)
(tabbar-mode)
(global-set-key [(meta right)] 'tabbar-forward)
(global-set-key [(meta left)] 'tabbar-backward)
(global-set-key [(meta up)] 'tabbar-backward-group)
(global-set-key [(meta down)] 'tabbar-forward-group)
