(use-package yatex
  :mode (("\\.tex$" . yatex-mode)
	 ("\\.ltx$" . yatex-mode)
	 ("\\.sty$" . yatex-mode))
  :config
  (setq YaTex-kanji-code 4)
  (setq YaTex-use-AMS-LaTeX nil))
