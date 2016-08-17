(use-package scala-mode
  :interpreter
  ("scala" . scala-mode))

(use-package ensime
  :config
  (setq ensime-startup-snapshort-notification nil)
  (setq ensime-completion-style 'auto-complete)
  (add-hook 'ensime-mode-hook #'scala/enable-eldoc)
  (add-hook 'scala-mode-hook (lambda ()
			       (ensime-scala-mode-hook)
			       (setq prettify-symbols-alist scala-prettify-symbols)
			       (pretiffy-symbols-mode)))

;; eldocにエラー情報や型情報を表示する
(defun scala/enable-eldoc ()
  "Show error message or type name at point by Eldoc."
  (setq-local eldoc-documentation-function
              #'(lambda ()
                  (when (ensime-connected-p)
                    (let ((err (ensime-print-errors-at-point)))
                      (or (and err (not (string= err "")) err)
                          (ensime-print-type-at-point))))))
  (eldoc-mode +1))

(defun scala/completing-dot-company ()
  (cond (company-backend
         (company-complete-selection)
         (scala/completing-dot))
        (t
         (insert ".")
         (company-complete))))

(defun scala/completing-dot-ac ()
  (insert ".")
  (ac-trigger-key-command t))

;; Interactive commands

(defun scala/completing-dot ()
  "Insert a period and show company completions."
  (interactive "*")
  (eval-and-compile (require 'ensime))
  (eval-and-compile (require 's))
  (when (s-matches? (rx (+ (not space)))
                    (buffer-substring (line-beginning-position) (point)))
    (delete-horizontal-space t))
  (cond ((not (and (ensime-connected-p) ensime-completion-style))
         (insert "."))
        ((eq ensime-completion-style 'company)
         (scala/completing-dot-company))
        ((eq ensime-completion-style 'auto-complete)
         (scala/completing-dot-ac))))

;; prettify-symbols
(setq scala-prettify-symbols
      '(("=>" . ?⇒)
	("<-" . ?←)
	("->" . ?→)
	("undefined" . ?⊥)
	("&&" . ?∧)
	("||" . ?∨)
	("<<<" . ?⋘)
	(">>>" . ?⋙)
	("++" . ?⧺)
	("any" . ?∃)
	("all" . ?∀)
	("traverse" . ?↦)
	("map" . ?∘)
	("lambda" . ?λ)
	("alpha" . ?α)
	("beta" . ?β)
	("Unit" . ?∅)))
