(use-package ddskk
  :defer t
  :bind (("C-x j" . skk-mode))
  :init
  (setq skk-isearch-start-mode 'latin)
  (setq-default skk-kutouten-type '("．" . "，"))
  (setq skk-dcomp-active t))
