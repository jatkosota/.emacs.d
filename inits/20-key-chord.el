(use-package key-chord
  :init
  (key-chord-mode 1)
  :config
  (setq key-chord-two-keys-delay 0.1)
  (key-chord-define-global "gl" 'goto-line)
  (key-chord-define-global "fj" 'helm-M-x))

