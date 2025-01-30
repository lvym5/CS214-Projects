;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Aggregate Operations in Clojure
;;;; Name: Lily McAboy
;;;; Date: 3/15/2024
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns nameTester)

(defrecord Name [firstName middleName lastName])

(defn make-Name [first middle last]
(->Name first middle last)
)

(defn getFirst [^Name aName]
(:firstName aName)
)

(defn getMiddle [^Name aName]
(:middleName aName)
)

(defn getLast [^Name aName]
(:lastName aName)
)

(defn toString [^Name aName]
(str (:firstName aName) " " (:middleName aName) " " (:lastName aName))
)

(defn printName [^Name aName]
(print (toString aName))
)

(defn setFirst [aName newFirst]
(->Name newFirst (:middleName aName) (:lastName aName))
)

(defn setMiddle [aName newMiddle]
(->Name (:firstName aName) newMiddle (:lastName aName))
)

(defn setLast [aName newLast]
(->Name (:firstName aName) (:middleName aName) newLast)
)

(defn lfmi [aName]
(->Name (:lastName) (str ", ")(:firstName) (str " ")(:middleName)(subs 0 1) (str "."))
)

(defn read [])

(defn -main []
  (let
    [                                          ; 3 ways to construct an object:
      name1 (make-Name "John" "Paul" "Jones")  ; -using our "make-" constructor
      name2 (->Name "Jane" "Penelope" "Jones") ; -invoking constructor directly
                                               ; -mapping field-names to values
      name3 (map->Name {:lastName "Jones" :firstName "Jinx" :middleName "Joy"})
    ]
    ;; ----- SECTION 1 -----
    (println)
    (print name1) (println)
    (assert (= (getFirst name1) "John") "getFirst(1) failed")
    (assert (= (getMiddle name1) "Paul") "getMiddle(1) failed")
    (assert (= (getLast name1) "Jones") "getLast(1) failed")
    (assert (= (toString name1) "John Paul Jones") "toString(1) failed")
    (printName name1) (println)
    ;; ----- SECTION 2 -----
    (println)
    (print name2) (println)
    (assert (= (getFirst name2) "Jane") "getFirst(2) failed")
    (assert (= (getMiddle name2) "Penelope") "getMiddle(2) failed")
    (assert (= (getLast name2) "Jones") "getLast(2) failed")
    (assert (= (toString name2) "Jane Penelope Jones") "toString(2) failed")
    (printName name2) (println)
    ;; ----- SECTION 3 -----
    (println)
    (print name3) (println)
    (assert (= (getFirst name3) "Jinx") "getFirst(3) failed")
    (assert (= (getMiddle name3) "Joy") "getMiddle(3) failed")
    (assert (= (getLast name3) "Jones") "getLast(3) failed")
    (assert (= (toString name3) "Jinx Joy Jones") "toString(3) failed")
    (printName name3) (println)


    (println)
    (setFirst name1 "Lily")
    (assert (= (getFirst name1) "Lily") "setFirst() failed")
    (setMiddle name1 "Violet")
    (assert (= (getMiddle name1) "Violet") "getMiddle() failed")
    (setLast name1 "McAboy")
    (assert (= (getLast name1) "McAboy") "getLast() failed")
    (assert (= (lfmi name1) "McAboy, Lily V.") "lfmi() failed")

    (println "\nAll tests passed!\n")
  )
)