;Name: Sumir Mathur
;Id: 2015kucp1017
;Sorting using Insertion Sort

(setf arr (make-array '(10) ))

(do ( (i (- (array-total-size arr) 1) (- i 1))
	  (counter 0 (+ counter 5)))
	( (< i 0) 0)
	(setf (aref arr i) counter)
)

(defun insertionSort (a)
	(do ( (j 1 (+ j 1)))
		( (>= j (array-total-size a)) 0)
		(setq key (aref a j))
		(setq k (- j 1))
		(loop 
			(when (or (< k 0) (< (aref a k) key)) (return k))
				(setf (aref a (+ k 1)) (aref a k))
				(setq k (- k 1))	
		)
		(setf (aref a (+ k 1)) key)
	)
)

(write-line "Original Array:")
(write arr)
(terpri)

(insertionSort arr)

(terpri)
(write-line "After Insertion Sort:")
(write arr)
