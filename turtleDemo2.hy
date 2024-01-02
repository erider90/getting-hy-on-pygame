(import turtle)

(setv pen (turtle.Turtle))
(pen.speed 1) ; Set speed using Hy syntax

(setv colors ["red" "orange" "yellow" "green" "blue" "indigo" "violet"]) ; Define colors in Hy

(defn draw_square [] ; Define the function using Hy's `defn`
  (for [_ (range 4)]
    (pen.forward 100)
    (pen.right 90)))

(for [color colors]
  (pen.color color)
  (draw_square)
  (pen.right 45))

(turtle.done)
