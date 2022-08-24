;;; ../.dotfiles/.doom.d/etc/python.el -*- lexical-binding: t; -*-
;; (add-hook 'python-mode-hook
;;           (lambda (
;;             (elpy-enable)

;;             (anaconda-mode)
;;             (anaconda-eldoc-mode)
;;             ;;;(importmagic-mode)

;;             (local-set-key (kbd "C-x C-d") 'anaconda-mode-show-doc)
;;             (local-set-key (kbd "C-x C-w") 'anaconda-mode-find-definitions)
;;             (add-hook 'before-save-hook 'pyimport-remove-unused)
;;             ;;;(add-hook 'before-save-hook 'importmagic-fix-imports)
;;             (add-hook 'before-save-hook 'pyimpsort-buffer)
;;             (add-hook 'before-save-hook 'blacken-buffer)
;;             (set (make-local-variable 'compile-command)
;;                  (concat "python3 " (buffer-name))
;;             )
;;           )
;;             )
;;           )
