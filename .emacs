(package-initialize)
(show-paren-mode 1)
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(require 'prettier-js)

(add-hook 'js2-mode-hook 'prettier-js-mode)
(add-hook 'web-mode-hook 'prettier-js-mode)
(setq prettier-js-args '(
  "--trailing-comma" "all"
  "--bracket-spacing" "false"
))


(require 'tuareg)

;; (require 'ocamldebug)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-safe-themes
   (quote
    ("c01736627ece6ddec945ec34a2886752d8c3446dff947167949093cc0ea0ce1d" "23bce8f5b2dff9512912bb2b7765e9bc30680c7e7c7fcb6e11edc845fe5e8e48" default)))
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2aa198")
     ("PROG" . "#268bd2")
     ("OKAY" . "#268bd2")
     ("DONT" . "#d70000")
     ("FAIL" . "#d70000")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#875f00")
     ("KLUDGE" . "#875f00")
     ("HACK" . "#875f00")
     ("TEMP" . "#875f00")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f"))))
 '(pdf-view-midnight-colors (quote ("#b2b2b2" . "#262626"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(load-theme 'zenburn t)



;; csharp mode auto initialization

(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist
      (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

;; (define-key my-undo (kbd "C-.") 'undo) 
(require 'solidity-mode)
(setq solidity-comment-style 'slash)
(define-key solidity-mode-map (kbd "C-c C-g") 'solidity-estimate-gas-at-point)
(global-set-key "\C-cd" 'kill-whole-line)     
(global-set-key "\C-cc" 'compile)     
(global-set-key "\C-cr" 'recompile)     
(global-set-key "\C-cs" 'shell)

(global-set-key "\C-cb" 'shell-bottom)
(global-set-key "\C-cu" 'run)

(defun shell-bottom ()
  (interactive)
  (shell)
  (end-of-buffer)
  )

;; (defun run ()
;;   (interactive)
;;   (save-buffer)
;;   (recompile)
;;   (shell)
;;   (end-of-buffer)
;;   ;(mode-specific-command-prefix)
;;   ;(mode-specific-command-prefix)
;;   (comint-previous-input 1) 
;;   )
B
