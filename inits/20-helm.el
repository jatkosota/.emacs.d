(use-package helm-projectile
  :init
  (helm-projectile-on))

(use-package helm-config
  :bind (("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
	 ("C-x b" . helm-buffers-list)
	 ("C-:" . helm-mini)
	 ("C-c h o" . helm-occur)
	 ("C-c h y" . helm-show-kill-ring)
	 ("C-c h r" . helm-recentf)
	 ("C-c h s" . helm-swoop)
	 ("C-c h a" . helm-multi-swoop-all)
	 ("C-c h t" . helm-elscreen)
	 ("C-c h g" . helm-ag)
	 ("C-c h p s" . helm-multi-swoop-projectile)
	 ("C-c h p f" . helm-projectile-find-file))
  :config
  (setq helm-delete-minibuffer-contents-from-point t)
  (setq helm-mini-default-sources '(helm-source-buffers-list
				    helm-source-files-in-current-dir
				    helm-source-projectile-files-list
				    helm-source-recentf)))

