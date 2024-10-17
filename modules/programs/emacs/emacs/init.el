;; bootstrap straight start
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(use-package straight
  :custom
  (straight-use-package-by-default t))
;; bootstrap straight end


;; All the icons 
(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))

(use-package all-the-icons-dired
  :after all-the-icons
  :hook (dired-mode . (lambda () (all-the-icons-dired-mode t))))

(use-package all-the-icons-ibuffer
  :after all-the-icons
  :hook (ibuffer-mode . all-the-icons-ibuffer-mode))


(use-package all-the-icons-completion
  :after (marginalia all-the-icons)
  :demand t
  :hook (marginalia-mode . all-the-icons-completion-marginalia-setup)
  :init (all-the-icons-completion-mode))

