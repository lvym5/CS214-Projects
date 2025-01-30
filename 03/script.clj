Script started on 2024-02-06 14:13:48-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="271" LINES="68"]
]0;lvm5@gold07: ~/214/projects/03/clojure/src[01;32mlvm5@gold07[00m:[01;34m~/214/projects/03/clojure/src[00m$ cat letter_Grades.       grades.clj
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
]0;lvm5@gold07: ~/214/projects/03/clojure/src[01;32mlvm5@gold07[00m:[01;34m~/214/projects/03/clojure/src[00m$ clojure -m letter_grades

Enter your grade:
100

Your letter grade is: A
]0;lvm5@gold07: ~/214/projects/03/clojure/src[01;32mlvm5@gold07[00m:[01;34m~/214/projects/03/clojure/src[00m$ clojure -m letter_grades

Enter your grade:
95

Your letter grade is: A
]0;lvm5@gold07: ~/214/projects/03/clojure/src[01;32mlvm5@gold07[00m:[01;34m~/214/projects/03/clojure/src[00m$ clojure -m letter_grades

Enter your grade:
82

Your letter grade is: B
]0;lvm5@gold07: ~/214/projects/03/clojure/src[01;32mlvm5@gold07[00m:[01;34m~/214/projects/03/clojure/src[00m$ clojure -m letter_grades

Enter your grade:
75

Your letter grade is: C
]0;lvm5@gold07: ~/214/projects/03/clojure/src[01;32mlvm5@gold07[00m:[01;34m~/214/projects/03/clojure/src[00m$ clojure -m letter_grades

Enter your grade:
62

Your letter grade is: D
]0;lvm5@gold07: ~/214/projects/03/clojure/src[01;32mlvm5@gold07[00m:[01;34m~/214/projects/03/clojure/src[00m$ clojure -m letter_grades

Enter your grade:
29

Your letter grade is: F
]0;lvm5@gold07: ~/214/projects/03/clojure/src[01;32mlvm5@gold07[00m:[01;34m~/214/projects/03/clojure/src[00m$ exit
exit

Script done on 2024-02-06 14:14:30-05:00 [COMMAND_EXIT_CODE="0"]
