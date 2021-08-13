(define anatomy '((nose (deviated-septum breath-right-strips))
                (tongue (vacuum-activator cpap))
                (pharyngeal (sleep-tape mad))
                (inflammation (allergies sugar))))

(define biggest-problem 'tongue)


(define (part-fixes part)
  (cadr (assq part anatomy)))


(part-fixes 'inflammation)
