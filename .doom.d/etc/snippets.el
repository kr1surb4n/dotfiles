;;; ../.dotfiles/.doom.d/etc/snippets.el -*- lexical-binding: t; -*-

(push 'company-lsp company-backends)
(setq company-lsp-enable-snippet t)

;; insert stuff here (add-load-path! "lisp/package")
(yas-global-mode 1)

(add-hook 'after-init-hook 'global-company-mode)

;;;(add-hook 'python-mode-hook 'global-company-mode)
;;;(add-hook 'after-init-hook 'global-company-mode)
;;;(setq company-tooltip-align-annotations t)
;;(setq company-idle-delay 0.2
;;      company-minimum-prefix-length 3)

;;; Python coding
(global-flycheck-mode)


(setq company-backends '(company-lsp
			  company-capf
                         company-keywords
                         company-semantic
                         company-files

                         company-clang
                         company-cmake
                         company-ispell
                         company-yasnippet))
