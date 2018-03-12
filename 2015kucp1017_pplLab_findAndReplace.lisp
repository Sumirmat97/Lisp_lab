;find and replace a word in paragraph as given by user
;Name: Sumir Mathur
;Id: 2015kucp1017

(write-line "Enter the paragraph: ")
(setq paragraph (read-line))
(terpri)

(format t "Enter the word you want to replace: ")
(setq word (read-line))
(terpri)

(format t "Enter the replacement: ")
(setq replaceWord (read-line))

(defun findAndReplace (find replace)
	
	(setq i 0)
	(loop 
		(when (>= i (length paragraph)) 
			(return i)
		)

		(when(char= (char paragraph i) (char find 0))
			(setq found 1)
		
			(setq j 0)
			(loop
				(if (or (>= j (length find)) (>= (+ i j) (length paragraph)) )
					(return j)
				)
		
				(when(char/= (char paragraph (+ i j)) (char find j))
					(setq found 0)
					(return 1)
				)
		
				(setq j (+ j 1))
			)
		
			(when (= found 1)
				(setq lhs (subseq paragraph 0 i))
				(setq rhs (subseq paragraph (+ i (length find))))
				(setq paragraph (concatenate 'string lhs replace))
				(setq paragraph (concatenate 'string paragraph rhs))
			)
		)
		
		(setq i (+ i 1))
	)
)

(findAndReplace word replaceWord)

(format t "~%The new paragraph is: ~%")
(write-line paragraph)

