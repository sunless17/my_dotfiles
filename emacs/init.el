;;; package --- main
;;; Commentary:
;;; Code:

;; personal tinkers
(use-package melpa
             :load-path "~/.config/emacs/configs/")
(use-package packages
             :load-path "~/.config/emacs/configs/")
(use-package minimal
             :load-path "~/.config/emacs/configs/")
(use-package startup
             :load-path "~/.config/emacs/configs/")
(use-package bindings
             :load-path "~/.config/emacs/configs/")

(provide 'init)
;;; init.el ends here
(put 'dired-find-alternate-file 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
	 '(evil-escape yasnippet-snippets which-key sudoku speed-type rustic rainbow-mode rainbow-delimiters projectile magit lsp-ui ivy-rich golden-ratio evil-vimish-fold evil-tutor evil-commentary evil-collection eglot doom-themes counsel company chess auctex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
