;================================================================================
;;; package --- Summary
;================================================================================
;;; init.el

;;; Commentary:
;;; This is the file that will handle the emacs configuration bundling
;;; Code:
;================================================================================


(require 'package)

(add-to-list 'package-archives
	     '("melpamilk" . "http://melpa.milkbox.net/#/"))
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("marmalade" . "https://marmalade-repo.org/packages/"))


(package-initialize)
(setq package-enable-at-startup nil)
(when (not package-archive-contents) (package-refresh-contents))

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/startup.org"))

(provide 'init)
;;; init.el ends here
