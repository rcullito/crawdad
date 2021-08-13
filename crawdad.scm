(load "nondeterminism.scm")

(define anatomy '((nose (deviated-septum breath-right-strips))
                  (tongue (vacuum-activator cpap))
                  (pharyngeal (closed-mouth mad surgery))
                  (maxilla (agga surgery))
                  (inflammation (allergies sugar))))

;; simplify to good bad, also include previous interventions

(define user-situation
  '((nose good)
    (tongue good)
    (pharyngeal bad)
    (maxilla good)
    (inflammation good)))

(define user-inverventions
  '((nose (breathe-right deviated-septum-surgery))
    (tongue (gopex vacuum-activator))
    (pharyngeal (closed-mouth mad))
    (maxilla (agga surgery))
    (inflammation (sugar allergies))))


(define (fixes part)
  (cadr (assq part anatomy)))


(let ((area-of-focus (choose user-situation)))
  (if (eq? (cadr area-of-focus) 'good)
      (fail)
      (let* ((problem-part (car area-of-focus))
             (suggestion (car (fixes problem-part))))
        (begin
          (display (cdr area-of-focus))
          (if (member suggestion (cdr area-of-focus))
              `(You should focus on ,problem-part have you tried ,suggestion ?)
              (fail))))))

we need a choose for every fail




(member closed-mouth)


(pair? (member 'closed-mouth '(bad eagle)))
