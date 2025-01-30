;;;; Name: Lily McAboy
;;;; Date: 2/14/2024
;;;; CS 214 Project 04
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns factorial)                                 ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn factorial[usr_num]
  (if (<= usr_num 1)
    1 ; base case
    (* usr_num (factorial(- usr_num 1))) ;multiply the number by the recursive function of the number -1 and etc. 
    )
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
  (println "Computing the factorial of a user given number.\n")
  (print "Enter your desired factorial number: ") (flush)
  (let
    [ n (int(read))]
    (printf "The factorial of %d is %d \n" n (factorial n))
    )
  )

              
