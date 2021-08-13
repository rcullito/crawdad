(load "nondeterminism.scm")

(define anatomy '((nose (deviated-septum breath-right-strips))
                  (tongue (vacuum-activator cpap))
                  (pharyngeal (sleep-tape mad))
                  (maxilla (agga surgery))
                  (inflammation (allergies sugar))))

(define user-situation
  '((nose ok)
    (tongue good)
    (phayngeal bad)
    (maxilla good)
    (inflammation ok)))



(let ((area-of-focus (choose user-situation)))
  (if (eq? (cadr area-of-focus) 'ok)
      (fail)
      `(you should focus on ,(car area-of-focus))))
