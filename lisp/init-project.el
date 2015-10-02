(require-package 'projectile)
(require-package 'web-beautify)

;; format automatically
(eval-after-load 'js2-mode
  '(add-hook 'js2-mode-hook
             (lambda ()
               (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

(provide 'init-project)
