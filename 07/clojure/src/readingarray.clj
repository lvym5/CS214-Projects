;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Reading in and printing an array in Clojure
;;; Name: Lily McAboy
;;; Date: 2/27/2024
;;; CS 214 Project 07 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns readingarray)

(defn readArray [mySize]
  (vec (repeatedly mySize
                   #(let [line (read-line)]
                      (Double/parseDouble (.trim line))))))

(defn printArray [myArray]
  (doseq [elem myArray]
    (println elem)))

(defn -main []
  (println "Enter your desired array size and then add your array values: ")
  (let [theSize (Integer. (read-line))
        theArray (readArray theSize)]
  (println "Here are the values of your array: ")
  (printArray theArray)))
