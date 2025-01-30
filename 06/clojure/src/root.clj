;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Getting roots of quadratic formula using Clojure
;;; Name: Lily McAboy
;;; Date: 2/22/2024
;;; CS 214 Project 06
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns root)

(defn root [a b c]
  (if (not= a 0)
    (let [discr (- (* b b) (* 4 c))]
      (if (>= discr 0)
        [(/ (+ (- b) (Math/sqrt discr)) (* 2 a))
         (/ (- (- b) (Math/sqrt discr)) (* 2 a))]
        (do 
          (println "b^2 - 4ac is negative")
          [0 0])
        )
      )
    (do 
      (println "a cannot be 0. Try again.")
      [0 0])
    )
  )

(defn -main[]
  (print "To get the quadratic roots, first enter a: ") (flush)
  (let 
    [ a (read-line)
     b (read-line)
     c (read-line)
     ] 
    (let [roots (root
                      (Double/parseDouble a)
                      (Double/parseDouble b)
                      (Double/parseDouble c))]
      (if (not= roots[0 0])
                (do 
                  (println "First Root: " (first roots))
                  (println "Second Root: " (second roots))
                  )
                (println "Roots are invalid.")
                )
      )
    )
  )
