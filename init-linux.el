 ;;只运行一个进程emacs server
(require 'server)
(unless (server-running-p)
(server-start))

;;设置工作目录
(setq default-directory "~/obj/")
