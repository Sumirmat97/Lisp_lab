;sorting using bubbleSort
;Name: Sumir Mathur
;Id: 2015kucp1017

(setf arr (make-array '(10) ))

(do ( (i (- (array-total-size arr) 1) (- i 1))
	  (counter 0 (+ counter 5)))
	( (< i 0) 0)
	(setf (aref arr i) counter)
)

(defun swap (array a b)
	(setf temp (aref array a))
	(setf (aref array a) (aref array b))
	(setf (aref array b) temp)
)

(defun bubbleSort (a)
	(dotimes (j (array-total-size a))
		(do ( ( k 0 (+ k 1)))
			( (>= k (- (array-total-size a) 1)) 0)
				(if (> (aref a k) (aref a (+ k 1)))
					(swap a k (+ k 1))
				)
		)
	)
)

(write-line "Original Array:")
(write arr)
(terpri)

(bubbleSort arr)

(terpri)
(write-line "After Bubble Sort:")
(write arr)
