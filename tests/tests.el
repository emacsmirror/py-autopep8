(defun py-autopep8-tests-setup ()
  ;; Disable undo (for faster tests).
  (setq buffer-undo-list t)

  ;; Quiet warning message about guessing offset.
  (setq python-indent-guess-indent-offset t)
  (setq python-indent-guess-indent-offset-verbose nil))

(defun py-autopep8-write-test-file ()
  (write-file "/tmp/py-test-file.py"))
