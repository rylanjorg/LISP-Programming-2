;; Write a tail-recursive function to compute the length of an arbitrary list.

(defun length-tail-recursion (lst &optional (count 0))
  (if (null lst)
      (progn
        (format t "Length: ~d~%" count)
        count)
      (length-tail-recursion (cdr lst) (1+ count))))

;; test cases

(length-tail-recursion '(1 2 3 4 5))
(length-tail-recursion '(23 78 1 5 2 1 1 2))
(length-tail-recursion '(1))
(length-tail-recursion '())