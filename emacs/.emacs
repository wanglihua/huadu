(set-default-font "Courier 10 Pitch-7.5")

;;建立的plugins加到.emacs的启动目录
(add-to-list 'load-path "~/.emacs.d/plugins")

;;Line Number
(global-linum-mode t)
(column-number-mode t)

;;color-theme
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme-6.6.0/") (require 'color-theme)
(color-theme-initialize)
(color-theme-gnome2)

;;go-mode
(add-to-list 'load-path "~/.emacs.d/plugins/go-mode.el-1.4.0/") (require 'go-mode-autoloads)

;;设置缩进
(setq indent-tabs-mode t)
(setq default-tab-width 4)
(setq tab-width 4)

;;No Menu Bar
(menu-bar-mode -1)
;;No Tool Bar
(tool-bar-mode -1)
;;No Scroll Bar
(scroll-bar-mode -1)

;;'y'/'n'代替'yes'/'no'
(fset 'yes-or-no-p 'y-or-n-p)
;;支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)
;;设置让光标指到某个括号与它匹配的括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; 最大化
(defun my-maximized ()
(interactive)
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
)
;; 启动emacs时窗口最大化
(my-maximized)

;; 实现全屏效果，快捷键为f11
(global-set-key [f11] 'my-fullscreen) 
(defun my-fullscreen ()
(interactive)
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_FULLSCREEN" 0))
)
