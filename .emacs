
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-compression-mode t nil (jka-compr))
 '(case-fold-search t)
 '(current-language-environment "Latin-1")
 '(default-input-method "latin-1-prefix")
 '(global-font-lock-mode t nil (font-lock))
 '(inhibit-startup-screen t)
 '(markdown-command "pandoc")
 '(package-selected-packages '(auctex math-symbol-lists markdown-mode))
 '(save-place t nil (saveplace))
 '(show-paren-mode t nil (paren))
 '(spice-output-local "Gnucap")
 '(spice-simulator "Gnucap")
 '(spice-waveform-viewer "Gwave")
 '(transient-mark-mode t)
 '(warning-suppress-log-types '((comp))))
(display-time)
(global-set-key [f3] 'shell)
(global-set-key [f4] 'goto-line)
(global-set-key [f5] 'query-replace)
(global-set-key [f6] "\M-x kill-rectangle")
(global-set-key [f7] "\M-x yank-rectangle")
;(global-set-key (kbd  "\C-c \C-v") "\M-;")
(global-set-key (kbd  "\C-c \C-c") 'comment-region)
(global-set-key (kbd  "\C-c \C-v") 'uncomment-region)
(global-set-key [f8] 'comment-region)
(global-set-key [f9] 'uncomment-region)
(global-set-key [f12] 'LaTeX-close-environment)
(global-set-key "\M-n" 'hippie-expand)
(global-set-key (kbd "<C-f2>") 'visual-line-mode)
(global-set-key (kbd "<C-f3>") 'markdown-preview)

(global-set-key (kbd "<s-f3>") 'hs-minor-mode)
(global-set-key (kbd "<s-f4>") 'hs-toggle-hiding)
(global-set-key (kbd "<s-f5>") 'hs-hide-block)
(global-set-key (kbd "<s-f6>") 'hs-hide-all)
(global-set-key (kbd "<s-f7>") 'hs-show-all)
(global-set-key (kbd "<s-f8>") 'hs-show-block)


(if (display-graphic-p)
    (progn
      (custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
       '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "monotype" :family "Courier")))))
      )
  (custom-set-faces
   '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "monotype" :family "Courier"))))))


;;(set-default-font "8x13")
(put 'scroll-left 'disabled nil)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "monotype" :family "Courier")))))
