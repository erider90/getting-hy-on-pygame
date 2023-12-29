(import pygame)

(pygame.init)
(setv W_H #(300 300))
(setv FPS 60)
(setv RED #(255 0 0)) 
(setv clock (pygame.time.Clock))
(pygame.display.set_caption "example")


(setv win (pygame.display.set_mode W_H))
(setv box (pygame.Rect 0 0 50 50)) 

(setv running True)

(while running
  (clock.tick FPS)
  (pygame.draw.rect win RED box)
  (for [event (pygame.event.get)]
    (if (= event.type pygame.QUIT) (setv running False)
        (setv running True)))
  (pygame.display.update))
(pygame.quit)

