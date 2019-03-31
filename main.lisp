;;;; MAIN for GRAND THEFT WUMPUS

(load "grand-theft-wumpus.lisp")
(load "graph-util.lisp")
(load "game-repl.lisp")

(defun main ()
    (new-game)
    (princ "NEW GAME: See known-city.png")
    (game-repl))

;;; Compile with SBCL
;;; sbcl --script main.lisp
(sb-ext:save-lisp-and-die "grand-theft-wumpus"
    :toplevel #'main
    :executable t)
