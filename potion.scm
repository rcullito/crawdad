(load "nondeterminism.scm")

;; 4 clues
;;


(let* ((potions '(1 2 3 4 5 6 7))
       (nettle-1 (choose potions))
       (nettle-2 (choose potions))
       (dwarf (choose potions))
       (giant (choose potions))))
