;; Use the functions you wrote for Numbers 2 and 3 to write a program to input a 
;; 0-ended list of integers, print the list in the order entered, and print the
;; maximum and minimum of the list.

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

(defun maximum (lst)
  (if (null lst)
      nil
      (let ((max (car lst)))
        (dolist (x (cdr lst))
          (when (> x max)
            (setf max x)))
        max)))

(defun minimum (lst)
  (if (null lst)
      nil
      (let ((min (car lst)))
        (dolist (x (cdr lst))
          (when (< x min)
            (setf min x)))
        min)))

(let ((input (read-integers)))
  (format t "The maximum of the list is ~a~%" (maximum input))
  (format t "The minimum of the list is ~a~%" (minimum input)))