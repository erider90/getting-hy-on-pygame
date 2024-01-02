(import turtle)

(pys "
pen = turtle.Turtle()
pen.speed(1) 

colors = [\"red\", \"orange\", \"yellow\", \"green\", \"blue\", \"indigo\", \"violet\"]

def draw_square():
    for _ in range(4): 
        pen.forward(100)
        pen.right(90)

# Main loop
for color in colors:
    pen.color(color)
    draw_square()
    pen.right(45)

turtle.done()
")

