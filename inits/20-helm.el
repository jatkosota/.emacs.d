(use-package helm-ls-git
  :bind (("C-c C-g" . helm-ls-git-ls)))

(use-package helm-config
  :bind (("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
	 ("C-x b" . helm-buffers-list)
	 ("C-:" . helm-mini)
	 ("C-c C-c o" . helm-occur)
	 ("C-c C-c y" . helm-show-kill-ring)
	 ("C-c C-c r" . helm-recentf)
	 ("C-c C-c s" . helm-swoop)
	 ("C-c C-c a" . helm-multi-swoop-all)
	 ("C-c C-c t" . helm-elscreen))
  :config
  (setq helm-delete-minibuffer-contents-from-point t)
  (use-package helm-ls-git)
  (setq helm-mini-default-sources '(helm-source-buffers-list
				    helm-source-files-in-current-dir
				    helm-source-ls-git
				    helm-source-recentf)))

