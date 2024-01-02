(import pygame)
(pygame.init)

; Define some colors
(setv RED #(255 0 0))
(setv BLUE #(0 0 255))
(setv BLACK #(0 0 0)) 

; Create a screen object and set the caption
(setv screen (pygame.display.set_mode #(800, 600)))
(pygame.display.set_caption "Draw Example")

; Fill the screen with black
(screen.fill BLACK)

; Draw a red circle at the center of the screen
(pygame.draw.circle screen RED #(400 300) 100)

; Draw a blue rectangle at the top left corner of the screen
(pygame.draw.rect screen BLUE #(0 0 200 100))

; Update the display
(pygame.display.flip)

; Wait for 30 seconds and quit
(pygame.time.wait 30000)
(pygame.quit)
