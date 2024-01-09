(import 
pygame_menu
pygame_menu.examples [create_example_window]
typing [Tuple Any])

(setv user_name "")
(setv surface (create_example_window "Example - Simple" #(600 400)))

(defn set_difficulty [selected: Tuple value: Any]
     (print f"Set difficulty to {(get selected 0)} ({value})"))

(defn start_the_game[] pass) 

(pys "
menu = pygame_menu.Menu(
    height=300,
    theme=pygame_menu.themes.THEME_BLUE,
    title='Welcome',
    width=400) 
")

(pys "
user_name = menu.add.text_input('Name: ', default='John Doe', maxchar=10)
menu.add.selector('Difficulty: ', [('Hard', 1), ('Easy', 2)], onchange=set_difficulty)
menu.add.button('Play', start_the_game)
menu.add.button('Quit', pygame_menu.events.EXIT)
")

(menu.mainloop surface)