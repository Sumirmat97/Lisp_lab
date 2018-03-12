;Name: Sumir Mathur
;Id: 2015kucp1017

(setq list1 (list 1 1 2 3 4 'a 'b 'c )
       list2 (list 1 4 5 'b 'c 'd)) 
(write-line "The lists are :")
(write list1)
(terpri)
(write list2)
(terpri)
(terpri)
(write-line "union:")
(write (union list1 list2))
(terpri)
(write-line "intersection:")
(write (intersection list1 list2))
(terpri)
(write-line "difference list1-list2:")
(write (set-difference list1 list2))


