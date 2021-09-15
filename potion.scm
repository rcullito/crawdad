(load "nondeterminism.scm")

(define potions '(1 2 3 4 5 6 7))

;; 1.  poison will always be to the left of nettle
;; 2. the ends will be different, and neither is forward

;; 4. the 2nd in are the same, though different size
(define potions2 '(poison-1 nettle-1 forward poison-2 poison-3 nettle-2 reverse))

;; the question here is actually how to build the list, not how to choose from it.
;; look to sussman


;; from the 3 rules so far, we know that it is in the middle 3


(eq? (car potions2) 'poison-1)
;; eventually have 2 choices, harry and hermione
(let ((choice (choose potions2)))
  (if (or (eq? choice (car (reverse potions2)))
          (eq? choice (car potions2))
          (eq? choice (cadr potions2))
          (eq? choice (cadr (reverse potions2))))
      (fail)
      choice))


