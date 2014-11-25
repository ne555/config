
(custom-set-variables
	;; custom-set-variables was added by Custom.
	;; If you edit it by hand, you could mess it up, so be careful.
	;; Your init file should contain only one such instance.
	;; If there is more than one, they won't work right.
	'(global-linum-mode t)
	'(make-backup-files nil)
	'(revert-without-query 
		(quote ("t"))
	)
	'(tab-width 4)
)
(custom-set-faces
	;; custom-set-faces was added by Custom.
	;; If you edit it by hand, you could mess it up, so be careful.
	;; Your init file should contain only one such instance.
	;; If there is more than one, they won't work right.
)
(setq linum-format "%4d\u2502 ")
(setq tab-stop-list (number-sequence 4 120 4))

;; (require 'compile)
;; (add-hook 'c++-mode-hook
;; 	(lambda ()
;; 		(set (make-local-variable 'compile-command )
;; 			(format "%s %s"
;; 				"g++ -W{all,extra,pedantic} -std=c++11"
;; 				(file-name-nondirectory buffer-file-name)
;; 			)
;; 		 )
;; 	)
;; )

(setq compilation-read-command nil)

(add-to-list 'load-path "~/.local/share/emacs")
(require 'smart-compile)
