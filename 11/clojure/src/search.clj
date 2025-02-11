;; search.clj tests a function to search a list for a value.
;;
;; Output: three lists, and 
;;          the results of calling a maxList() function on them.
;;
;; Usage: clojure -m search
;;
;; Name: Lily McAby
;; Date: 4/15/2024
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns search)

(load "listOps")                      ; load module

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Function -main tests function listMax(). 
;; Output: the results of testing listMax() on various lists.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let
    [
     list1 '(99 88 77 66 55)        ; max is first value
     list2 (list 55 66 77 88 99)    ; max is last value
     list3 (list 55 77 99 88 66)    ; max is middle value
     emptyList '()                  ; list is empty
     list4 (list 55 66 77 88)    

     ]

    (println)
    (println "list1: " list1)        ; print list1,
    (println "list2: " list2)        ;   list2,
    (println "list3: " list3)        ;   list3,
    (println "list4: " list4)
    (println)                        ;   and search


    (println "If -1 is returned as the index, then the number was not found in the list.")

    (println "In list1, 99 is found in index: " (searchFor list1 99))
    (println "In list2, 99 is found in index: " (searchFor list2 99))
    (println "In list3, 99 is found in index: " (searchFor list3 99))
    (println "In list4, 99 is found in index: " (searchFor list4 99))

    )
  )

