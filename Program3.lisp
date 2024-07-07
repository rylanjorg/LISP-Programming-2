;; Write a function that collects integers from the user until a 0 is
;; encountered and returns them in a list in the order they were input.

(defun read-integers ()
  (let ((input nil)
        (done nil))
    (loop while (not done) do
      (format t "Enter an integer (0 to quit): ")
      (let ((x (read)))
        (if (= x 0)
            (setf done t)
            (setf input (append input (list x))))))
    (format t "The integers you entered are: ~a~%" input)
    input))

(read-integers)
