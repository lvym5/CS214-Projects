;;;; compute the area of a rectangle
;;;; Input: height and width
;;;; Output: area of circle
;;;; Created by: Lily McAboy
;;;; Date: 1/20/2024

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns rectangle_area) ;namespace

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function rectangle_area() computes the area of a rectangle
;;; receiving height and width, where both are positive
;;; Return the area
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn rectangleArea [height width]
  (* height width) ;Return the area
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;Function: execute our function
;;;Input: height and width
;;;output: area
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (println "To compute the area of a rectangle: \n")
  (let [height (do (print "Enter the height: ")(flush)(read))
        width (do(print "Enter the width: ")(flush)(read))] ;do() function found on stack overflow: https://stackoverflow.com/questions/58076459/addition-of-two-numbers-by-taking-user-input
        (assert(>= width 0) "-main: Width must be positive.")
        (assert(>= height 0) "-main: Height must be positive.")
        (printf "\nThe area of the rectangle is %.2f\n\n" (double(rectangleArea height width)))
    )
)

