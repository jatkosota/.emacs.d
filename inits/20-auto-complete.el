(use-package auto-complete-config
  :init
  (ac-config-default)
  (global-auto-complete-mode t)
  :config
  (add-to-list 'ac-modes 'text-mode)
  (add-to-list 'ac-modes 'fundamental-mode)
  (add-to-list 'ac-modes 'org-mode)
  (add-to-list 'ac-modes 'yatex-mode)
  (add-to-list 'ac-modes 'LaTeX-mode)
  (add-to-list 'ac-modes 'haskell-mode)
  (ac-set-trigger-key "TAB")
  (setq ac-use-menu-map t)
  (setq ac-use-fuzzy t))

