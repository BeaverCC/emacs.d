;; (setq auto-mode-alist
;;       (append '(("SConstruct\\'" . python-mode)
;; 		("SConscript\\'" . python-mode))
;;               auto-mode-alist))

;; (require-package 'pip-requirements)

;; (defvar myPackages
;;   '(better-defaults
;;     elpy ;; add the elpy package
;;     material-theme))
(require-package 'elpy)

(elpy-enable)

(provide 'init-python-mode)
