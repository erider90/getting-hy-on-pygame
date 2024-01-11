(import sys [argv exit path])
(import importlib) 

(path.insert 0 "C:\\Users\\super\\Downloads\\pyDSL")

(defn parserDSL [file]
(with [o (open file "r")]
    (for [line o]
        (setv line (line.strip))
        (when (or (not line) (= (get line 0) "#"))
               (continue))
        (setv parts  (line.split))
        (print parts)))

    (setv mod 
        (importlib.import_module (get parts 0)))
    (print mod)
    (setv func (getattr mod (get parts 1)))
    (func (get parts 2) (get parts 3))
 )
;; The source file is the 1st argument to the script
(when (!= (len argv) 2) (do 
    (print f"usage: {(get argv 0)} <src.dsl>")
    (exit 1)))
(print (parserDSL (get argv 1)))