;; Write a function that computes the maximum and minimum of a list of integers.

(defun max-min (lst)
  (let ((max (first lst))
        (min (first lst)))
    (dolist (x (rest lst))
      (when (> x max)
        (setf max x))
      (when (< x min)
        (setf min x)))
    (format t "Maximum: ~d~%" max)
    (format t "Minimum: ~d~%" min)
    (list max min)))

;; test cases

(max-min '(1 1 7 2 7 8 5))
(max-min '(1))
(max-min '(5 5 9 -8))
