;Swap adjacent values of array
;Name: Sumir Mathur
;Id: 2015kucp1017

(setf arr (make-array '(10)
			))
(dotimes (i (array-total-size arr))
	(setf (aref arr i) i)
)

(defun swapAdj (a)
	(setq noOfTimes (floor(/ (array-total-size a) 2)))
	(do ( ( j 0 (+ j 2))
		  (counter 0 (+ counter 1)))
		  ( (= counter noOfTimes) counter)
			(setf temp (aref a j))
			(setf (aref a j) (aref a (+ j 1)) )
			(setf (aref a (+ j 1)) temp)
	)
)

(write-line "Original Array: ")
(write arr)
(terpri)

(swapAdj arr)

(terpri)
(write-line "After swapping adjacent values")
(write arr)
