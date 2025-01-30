;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Name: Lily McAboy
;;;; Date: 2/5/2024
;;;; CS 214 Project 03
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns letter_grades) ; namespace function names the program

(defn letterGrade [usr_grade]
  (let [grade (int(/ usr_grade 10.0))]
    (cond
      (or (= grade 10) (= grade 9)) "A"
      (= grade 8) "B"
      (= grade 7) "C"
      (= grade 6) "D"
      :else "F"
      )
    )
  )

(defn -main []
  (println "\nEnter your grade:")
  (let
    [ grade (read) ]

    (printf "\nYour letter grade is: ")
    (println (letterGrade grade))
    )
  )
