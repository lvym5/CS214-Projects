;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Name: Lily McAboy
;; Date 2/21/2024
;; CS 214
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns practice) 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Reverse function caled my-reverse which is only reversing top-level elements
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn my-reverse [sequence]
  (
   if(empty? sequence)
   '()
   (concat (my-reverse (rest sequence)) (list (first sequence)))
   )
  )

(defn super-reverse [sequence]
  (cond
    (empty? sequence) sequence
    (list? (first sequence)) (concat (super-reverse (rest sequence)) [(super-reverse (first sequence))])
    :else (concat (super-reverse (rest sequence)) [(first sequence)])
    )
  )


(defn member? [sub sequence]
  (if (empty? sequence)
    false
    (or (= sub (first sequence))
        (member? sub (rest sequence))
        )
    )
  )

(defn subsequence [sequence i n]
  (cond 
    (or (empty? sequence ) (< i 0) (<= (count sequence) i))
    nil 
    (zero? n)
    '()
    :else
    (if (= 0 i)
      (cons (first sequence) (subsequence (rest sequence) i (dec n)))
      (subsequence (rest sequence) (dec i) n)
      )
    )
  )

(defn -main []

  (println (my-reverse '(a b (c d) (e (f g)))))
  (println (super-reverse '(a b (c d) (e (f g)))))

  (println (member? '(1 2) '((1 2) 3 (4 (5 6)))))
  (println (member? 3 '((1 2) 3 (4 (5 6)))))
  (println (member? '(4 (5 6)) '((1 2) 3 (4 (5 6)))))

  (println (member? 1 '((1 2) 3 (4 (5 6)))))
  (println (member? 2 '((1 2) 3 (4 (5 6)))))
  (println (member? 4 '((1 2) 3 (4 (5 6)))))  

  (println (subsequence '(1 2 (3 4) (5 (6 7))) 1 2))  
  (println (subsequence '(1 2 3 4 5 6 7) 2 4))
  (println (subsequence '(1 2 (3 4) (5 (6 7))) 1 4))  

           )
  ;; suer reverse reverses nested sublists as well as top level elements

  ;; Member? that returns true or false if an argument vector is contained in a list

  ;; Subsequence ist i n returns the part of the input list starting at position i and counts for n elements


