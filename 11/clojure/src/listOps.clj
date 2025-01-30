;; listOps.clj is a Clojure "module" for list operations.
;;
;; Name: Lily McAboy
;; Date: 4/15/2024
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; searchFor() traverses a list for a value
;; Receive: a list, a number to search for
;; Return: return the index in the list. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn searchFor [aList myValue]
  (if (list? aList)
    (if (empty? aList)
      -1
      (let [myRes (first (filter (fn [[idx v]] (= v myValue))
                                (map-indexed vector aList)))]
        (if myRes
          (first myRes)
          -1)))))


