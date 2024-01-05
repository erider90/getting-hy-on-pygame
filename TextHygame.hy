(import pygame) 

(pygame.init) 


(setv white #(255 255 255)) 
(setv green #(0 255 0)) 
(setv blue #(0 0 128)) 


(setv X 300) 
(setv Y 300) 

(setv display_sur (pygame.display.set_mode #(X Y)))

(setv font (pygame.font.Font "freesansbold.ttf" 32))

(setv text (font.render "Hy on Pygame" True green blue))

(setv textRect (text.get_rect)) 
(setv C (// X 2)) 
(setv M (// Y 2))

(setv textRect.center #(C M)) 

(setv running True) 
(while running

    (display_sur.fill white)

    (display_sur.blit text textRect)

    (for [event (pygame.event.get)]
        (if (= event.type pygame.QUIT) (setv running False)
        (setv running True))
        (pygame.display.update)))
    
(pygame.quit)


