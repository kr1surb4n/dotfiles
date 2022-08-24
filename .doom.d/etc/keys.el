;;; ../.dotfiles/.doom.d/etc/keys.el -*- lexical-binding: t; -*-
;;; My Keybindings
(map! "<f11>" 'treemacs)
(global-set-key (kbd "C-<f11>") 'neotree-toggle)

(map! "M-<f11>" 'sr-speedbar-toggle)


(map! "<f10>" 'dumb-jump-go)
(global-set-key (kbd "C-<f10>") 'dumb-jump-back)
(global-set-key (kbd "M-<f10>") 'dumb-jump-quick-look)

(map! "<f9>" 'yas-insert-snippet)
(map! "<f8>" 'deft)
(global-set-key (kbd "C-<f8>") 'deft-find-file)


(global-set-key (kbd "C-<prior>")  'centaur-tabs-backward)
(global-set-key (kbd "C-<next>") 'centaur-tabs-forward)


(map! "C-M-<prior>" 'outline-show-entry)
(map! "C-M-<next>" 'outline-hide-entry)
(map! "C-M-S-<next>" 'outline-show-all)


(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-switchb)
(global-set-key (kbd "C-c c") 'org-capture)

(global-set-key (kbd "<f7>") 'org-clock-goto)
(global-set-key (kbd "C-<f7>") 'org-clock-in)


;;(global-set-key (kbd "<f9> I") 'bh/punch-in)
;;(global-set-key (kbd "<f9> O") 'bh/punch-out)

;; Key binding to use "hippie expand" for text autocompletion
;; http://www.emacswiki.org/emacs/HippieExpand
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-;") 'toggle-comment-on-line)

(global-set-key (kbd "M-x") 'smex)
