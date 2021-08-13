(load "nondeterminism.scm")

(define all-possible-fixes
  '((nose (breath-right deviated-septum-surgery))
    (tongue (gopex vacuum-activator cpap))
    (pharyngeal (closed-mouth mad surgery))
    (maxilla (agga surgery))
    (inflammation (allergies sugar))))

(define user-situation
  '((nose good)
    (tongue good)
    (pharyngeal bad)
    (maxilla good)
    (inflammation good)))

(define previous-interventions
  '((nose (breathe-right deviated-septum-surgery))
    (tongue (gopex vacuum-activator cpap))
    (pharyngeal (closed-mouth))
    (maxilla (agga))
    (inflammation (sugar allergies))))


(define (fixes part lookup)
  (cadr (assq part lookup)))


(let ((area-of-focus (choose user-situation)))
  (if (eq? (cadr area-of-focus) 'good)
      (fail)
      (let* ((problem-part (car area-of-focus))
             (suggestion (choose (fixes problem-part all-possible-fixes))))
        (if (member suggestion (fixes problem-part previous-interventions))
            (fail)
            `(You should focus on ,problem-part have you tried ,suggestion ?)))))



