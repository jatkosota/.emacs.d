(use-package anzu
  :init
  (global-anzu-mode +1)
  :config
  (global-set-key [remap query-replace] 'anzu-query-replace)
  (global-set-key [remap query-replace-regexp] 'anzu-query-replace-regexp)
  (setq anzu-replace-threshold 100)
  (copy-face 'mode-line 'anzu-mode-line))
