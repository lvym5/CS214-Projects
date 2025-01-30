;; Temp class
;;
;; Author: Lily McAboy
;; Date: 03/27/24
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrecord Temperature [degrees scale])

(defn make-Temperature [init-degrees init-scale]
    (->Temperature init-degrees init-scale)
)


(defn get-degrees [^Temperature tp]
    (:degrees tp)) 


(defn get-scale [^Temperature tp]
    (:scale tp))

(defn fahren [^Temperature tp]
    (case (:scale tp)
        (\c \C) (+ (* (:degrees tp) (/ 9.0 5.0)) 32.0)
        (\k \K) (+ (* (- (:degrees tp) 273.15) (/ 9.0 5.0)) 32.0)
        (:degrees tp) 
    ))

(defn celsius [^Temperature tp]
    (case (:scale tp)
        (\f \F) (* (- (:degrees tp) 32.0) (/ 5.0 9.0))
        (\k \K) (- (:degrees tp) 273.15)
        (:degrees tp) 
    ))

(defn kelvin [^Temperature tp]
    (case (:scale tp)
        (\f \F) (+ (* (- (:degrees tp) 32.0) (/ 5.0 9.0)) 273.15)
        (\c \C) (+ (:degrees tp) 273.15)
        (:degrees tp) (/ 9.0 5.0) 
    ))

(defn read-temp []
    (let [
            in (read-line)
            c (get in (- (count in) 1))
            deg (Double/parseDouble (subs in 0 (- (count in) 1))) 
         ]
        (->Temperature deg c)
            nil
    )
)

(defn write-temp [^Temperature tp]
    (print
        (str (get-degrees tp) " " (get-scale tp))
    )
)

(defn less [^Temperature tp1, ^Temperature tp2]
  (< (kelvin tp1) (kelvin tp2))
  )

(defn equal [^Temperature tp1, ^Temperature tp2]
  (= (kelvin tp1) (kelvin tp2))
  )

(defn lower [^Temperature tp1 val]
  (->Temperature (- (get-degrees tp1) val) (get-scale tp1))
  )

(defn raise [^Temperature tp1 val]
  (->Temperature (+ (get-degrees tp1) val) (get-scale tp1))
  )

