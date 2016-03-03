(require-package 'go-mode)
(require-package 'company-go)

(setenv "GOPATH" "/Users/beaver/Documents/go")

(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook (lambda ()
			  (set (make-local-variable 'company-backends) '(company-go))
			  (company-mode)))

(add-hook 'before-save-hook 'gofmt-before-save)
(provide 'init-go)
