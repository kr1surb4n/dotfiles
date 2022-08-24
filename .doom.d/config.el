;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Kris Urbanski"
      user-mail-address "przemek.kris.urbanski@gmail.com")

;;; Paths
(add-to-list 'load-path "~/bin/lisp")

;;; Requires
(require 'org-id)
(require 'company-lsp)
(require 'exec-path-from-shell)


;;; Hard settings

(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb
(setq package-check-signature nil)


;;;; make sure the env vars are the same as in the shell
;;;;
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(when (daemonp)
  (exec-path-from-shell-initialize))

;; Enhances M-x to allow easier execution of commands. Provides
;; a filterable list of possible commands in the minibuffer
;; http://www.emacswiki.org/emacs/Smex
(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)

(load! "etc/ui.el")
(load! "etc/editing.el")
(load! "etc/elisp-editing.el")
(load! "etc/org.el")
(load! "etc/snippets.el")
(load! "etc/deft.el")
(load! "etc/setup-clojure.el")
(load! "etc/setup-js.el")

(load! "etc/local.el)
;; (load! "etc/local.keys.el)

(load! "etc/keys.el")
