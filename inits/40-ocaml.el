(use-package tuareg-mode
  :defer t
  :commands (tuareg-mode tuareg-run-ocaml ocamldebug)
  :mode (("\\.ml[iylp]?" . tuareg-mode)))

(eval-after-load "tuareg"
  '(progn
     (define-key tuareg-mode-map (kbd "C-c h") nil)))
