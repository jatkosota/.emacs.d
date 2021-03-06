(use-package elscreen
  :bind (([(C-tab)] . elscreen-next)
	 ([(C-S-tab)] . elscreen-previous))
  :init
  (elscreen-start)
  (elscreen-persist-mode 1)
  :config
  (setq elscreen-tab-display-kill-screen nil)
  (setq elscreen-tab-display-control nil)
  ;; color
  (copy-face 'mode-line 'elscreen-tab-current-screen-face)
  (copy-face 'mode-line-inactive 'elscreen-tab-background-face)
  (copy-face 'mode-line-inactive 'elscreen-tab-control-face)
  (copy-face 'mode-line-inactive 'elscreen-tab-other-screen-face))

(use-package elscreen-server)
