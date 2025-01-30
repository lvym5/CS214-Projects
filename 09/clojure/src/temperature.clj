;; test temperature in clojure
;; 
;; Author: Lily McAboy
;; Date: 03/27/24
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns temperature) 

(load-file "src/temp-class.clj")

(defn -main []
    (let [
            base (do (print "Please input the base temp (ex 64.5 F): ") (flush) (read-temp))
            limit (do (print "Please input the limit temp (ex 64.5 F): ") (flush) (read-temp))
            step (do (print "Please input the step value: ") (flush) (read))
         ]

        (loop [curr-temp base]
            (if (less curr-temp limit)
                (do
                    (printf "\nF: %f\n" (fahren curr-temp))
                    (printf "C: %f\n" (celsius curr-temp))
                    (printf "K: %f\n\n" (kelvin curr-temp))
                    (recur (raise curr-temp step))
                )
                nil 
            )
        )
    )
)
