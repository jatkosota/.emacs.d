(use-package helm-ls-git
  :bind (("C-c C-g" . helm-ls-git-ls)))

(use-package helm-config
  :bind (("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
	 ("C-x b" . helm-buffers-list)
	 ("C-:" . helm-mini)
	 ("C-c C-o" . helm-occur)
	 ("C-c C-y" . helm-show-kill-ring)
	 ("C-c C-r" . helm-recentf)
	 ("C-c C-s s" . helm-swoop)
	 ("C-c C-s a" . helm-multi-swoop-all))
  :config
  (setq helm-delete-minibuffer-contents-from-point t)
  (use-package helm-ls-git)
  (setq helm-mini-default-sources '(helm-source-buffers-list
				    helm-source-files-in-current-dir
				    helm-source-ls-git
				    helm-source-recentf)))

