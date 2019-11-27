(add-to-list 'load-path (expand-file-name "~/.emacs.d/"))
(require 'spacemacs-common)

(deftheme spacemacs-dark "Spacemacs theme, the dark version")

(create-spacemacs-theme 'dark 'spacemacs-dark)

(provide-theme 'spacemacs-dark)
