(require-package 'projectile)
(require-package 'web-beautify)
(require-package 'cursor-chg)

(projectile-global-mode)

;; format automatically
(eval-after-load 'js2-mode
  '(add-hook 'js2-mode-hook
             (lambda ()
               (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

(defun kill-other-buffers ()
  "Kill all other buffers."
  (interactive)
  (mapc 'kill-buffer (delq (current-buffer) (buffer-list))))

(toggle-cursor-type-when-idle 1) ; Turn on cursor change when Emacs is idle
(change-cursor-mode 1) ; Turn on change for overwrite, read-only, and input mode
;; (setq curchg-input-method-cursor-color "#ccc")


(global-hl-line-mode 1)
(global-linum-mode t)

(provide 'init-project)
