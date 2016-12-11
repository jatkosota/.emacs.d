(use-package yatex
  :mode (("\\.tex$" . yatex-mode)
	 ("\\.ltx$" . yatex-mode)
	 ("\\.sty$" . yatex-mode))
  :config
  (setq YaTeX-kanji-code 4)
  (setq YaTeX-use-AMS-LaTeX nil))
