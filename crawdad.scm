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


(define (part-fixes part)
  (cadr (assq part anatomy)))


(part-fixes 'inflammation)
