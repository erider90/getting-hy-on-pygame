(import pygame)
;(import pdb) 
;(pdb.set_trace)

(pygame.init)
(setv W_H #(390 300)) ; Adjusted width to accommodate 9 boxes with spacing
(setv W 390) 
(setv H 300) 
(setv FPS 60)
(setv RED #(255 0 0))
(setv BLUE (pygame.Color 0 0 255))
(setv clock (pygame.time.Clock))
(setv speed 5) 

(setv hero_x (/ 360 2)) ; Centered horizontally
(setv hero_y (- 300 40)) ; Close to the bottom
(setv hero_width 45)
(setv hero_height 30)
(setv HERO (pygame.Color 81 43 88)) ; Define blueish color for the hero

(setv boxes [] ; List to store alien boxes
    box_width 30 ; Box width
    spacing 40) ; Space between boxes

(pygame.display.set_caption "pygame Demo")

(setv win (pygame.display.set_mode W_H))

(for [i (range 6)]
  (setv box (pygame.Rect 0 0 box_width box_width)) ; Create a box object
  (boxes.append box) ; Append the box to the list
  (setv last_box (get boxes -1)) ; Get the last box object using get and negative indexing
  (setv last_box.x (* i (+ box_width spacing)))) ; Set its x position
  (setv movement_speed 90)

(setv running True)
(while running
  (clock.tick FPS) ; Moved clock.tick to the beginning of the loop

; to show the expressiveness of hy language, using python to get around 
; some limitations of hy language 
  (pys "pressed = pygame.key.get_pressed()
if pressed[pygame.K_LEFT]: hero_x -= speed if hero_x > 20 else 0 
elif pressed[pygame.K_RIGHT]: hero_x += speed if hero_x < W - 20 else 0")

  (for [event (pygame.event.get)]
    (pys "if event.type == pygame.QUIT: running = False"))

  (pygame.display.update)

  (pygame.display.flip)
  (clock.tick 60)
  ; Clear the screen (important for smooth animation)
  (win.fill [0 0 0])

  (pygame.draw.rect win HERO (pygame.Rect hero_x hero_y hero_width hero_height))

  ; Draw the alien boxes
  (for [box boxes]
    (pygame.draw.rect win RED box)))

  ;(pygame.display.update))

(pygame.quit)

