;Swap First and Last values of array and so on
;Name: Sumir Mathur
;Id: 2015kucp1017

(setf arr (make-array '(10)
			))
(dotimes (i (array-total-size arr))
	(setf (aref arr i) i)
)

(defun swap (a)
	(do ( ( j 0 (+ j 1))
		  ( k (- (array-total-size a) 1) (- k 1)))
		  ( (>= j k) 0)
			(setf temp (aref a j))
			(setf (aref a j) (aref a k) )
			(setf (aref a k) temp)
	)
)

(write-line "Original Array: ")
(write arr)
(terpri)

(swap arr)

(terpri)
(write-line "After swapping mirror values")
(write arr)

