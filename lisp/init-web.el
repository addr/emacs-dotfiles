;; Initialization for web mode (specifically for using React and React Native)
(require 'web-mode)

;; Code
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))

(setq web-mode-content-types-alist
      '(("jsx" . "\\.js[x]?\\'")))

(provide 'init-web)
