(defun my-sml-mode-hook () "Local defaults for SML mode"
       (setq indent-tabs-mode nil))     ; never ever indent with tabs
(add-hook 'sml-mode-hook 'my-sml-mode-hook)
(add-to-list 'default-frame-alist '(width . 80)) 
(add-to-list 'default-frame-alist '(height . 40))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (deeper-blue))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#181a26" :foreground "gray80" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "apple" :family "Monaco")))))
(setenv "PATH" (concat "/usr/local/smlnj/bin:" (getenv "PATH")))
(setq exec-path (cons "/usr/local/smlnj/bin"  exec-path))
(put 'narrow-to-region 'disabled nil)

;; Ruby
(add-to-list 'load-path "~/elisp")
(autoload 'ruby-mode "ruby-mode" "Major mode for editing Ruby code" t)
(autoload 'run-ruby "inf-ruby"                                                          
  "Run an inferior Ruby process")                                                       
(autoload 'inf-ruby-keys "inf-ruby"                                                     
  "Set local key defs for inf-ruby in ruby-mode")                                       
(add-hook 'ruby-mode-hook                                                               
          '(lambda ()                                                                   
            (inf-ruby-keys)))                                                           
(require 'ruby-electric)
(add-hook 'ruby-mode-hook (lambda () (ruby-electric-mode t)))
(global-font-lock-mode 1)
(add-hook 'ruby-mode-hook
           (lambda ()
                       (define-key ruby-mode-map "{" nil)
                                   (define-key ruby-mode-map "}" nil)))
  (setq load-path (cons (expand-file-name "~/.emacs.d/rails-reloaded") load-path))
    (require 'rails-autoload)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
