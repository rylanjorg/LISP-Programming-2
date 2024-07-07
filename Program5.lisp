;; Write Quicksort for a list of integers.

(defun quicksort (lst)
  (if (null lst)
      nil
      (let* ((pivot (car lst))
             (rest (cdr lst))
             (smaller (quicksort (remove-if-not #'(lambda (x) (< x pivot)) rest)))
             (greater (quicksort (remove-if #'(lambda (x) (< x pivot)) rest))))
        (append smaller (cons pivot greater)))))

;; test cases

(format t "quicksort of (1) = ~A~%" (quicksort '(1))) 
(format t "quicksort of (3 1 4 1 5 9 2 6 5 3 5) = ~A~%" (quicksort '(3 1 4 1 5 9 2 6 5 3 5)))
(format t "quicksort of (1 2 3 4 5) = ~A~%" (quicksort '(1 2 3 4 5)))
(format t "quicksort of (5 4 3 2 1) = ~A~%" (quicksort '(5 4 3 2 1)))
(format t "quicksort of () = ~A~%" (quicksort '()))