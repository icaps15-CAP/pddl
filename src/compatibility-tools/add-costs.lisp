

(in-package :pddl)

(function-cache:defcached add-costs (pddl)
  (%add-costs pddl))

(defgeneric %add-costs (pddl) (:documentation "non-cached version of add-costs"))

(defmethod %add-costs ((problem pddl-problem))
  (if (member :action-costs (requirements (domain problem)))
      problem
      (let* ((newdomain (add-costs (domain problem)))
             (newproblem (shallow-copy problem :domain newdomain)))
        (setf (init newproblem)
              (cons (ground-function (query-function newdomain 'total-cost)
                                     nil 0 newproblem)
                    (init problem))
              (metric newproblem)
              (let ((*domain* newdomain)
                    (*problem* newproblem))
                (parse-metric-body '(minimize (total-cost)))))
        newproblem)))

(defmethod %add-costs ((domain pddl-domain))
  (if (member :action-costs (requirements domain))
      domain
      (let* ((total-cost (pddl-function :domain domain
                                        :name 'total-cost
                                        :parameters nil))
             (newdomain
              (shallow-copy domain
                            :requirements (cons :action-costs (requirements domain))
                            :functions (cons total-cost (functions domain)))))
        (setf (domain total-cost) newdomain
              (actions newdomain) (let ((*domain* newdomain))
                                    (mapcar #'add-costs (actions domain))))
        newdomain)))

(defmethod %add-costs ((a pddl-action))
  (if (member :action-costs (requirements (domain a)))
      a
      (shallow-copy
       a
       :domain *domain*
       :effect `(and ,@(add-list a)
                     ,@(mapcar (lambda (x) `(not ,x)) (delete-list a))
                     ,(parse-numeric-effect
                       `(increase (total-cost) 1)))
       'add-list +unbound+
       'delete-list +unbound+
       'assign-ops +unbound+)))

