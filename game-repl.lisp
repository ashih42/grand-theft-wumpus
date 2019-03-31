;;;; GAME REPL for GRAND THEFT WUMPUS

(defparameter *allowed-commands* '(walk charge))

(defun game-repl ()
    (let ((cmd (game-read)))
        (unless (eq (car cmd) 'quit)
            (game-print (game-eval cmd))
            (game-repl))))

(defun game-read ()
    (terpri)
    (princ "Enter command ")
    (princ *allowed-commands*)
    (princ ": ")
    (finish-output)
    (let ((cmd (read-from-string
                    (concatenate 'string "(" (read-line) ")"))))
        (flet ((quote-it (x)
                        (list 'quote x)))
            (cons (car cmd) (mapcar #'quote-it (cdr cmd))))))

(defun game-eval (sexp)
    (if (member (car sexp) *allowed-commands*)
        (eval sexp)
        '(I do not know that command.)))

(defun game-print (x)
    nil)