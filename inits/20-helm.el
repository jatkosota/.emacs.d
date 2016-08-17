(use-package helm-projectile
  :init
  (helm-projectile-on))

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
	 ("C-c C-c t" . helm-elscreen)
	 ("C-c C-c g" . helm-ag))
  :config
  (setq helm-delete-minibuffer-contents-from-point t)
  (setq helm-mini-default-sources '(helm-source-buffers-list
				    helm-source-files-in-current-dir
				    helm-source-projectile-files-list
				    helm-source-recentf)))

