
(in-package :pddl.builder)
(make-reachable 'arm '(table-in
		       tray-a
		       machine-a
		       tray-b
		       table2
		       tray-c
		       machine-b
		       table-out))

(make-dists2  '(table-in
   		   tray-a
   		   machine-a
   		   tray-b
   		   table2
   		   tray-c
   		   machine-b
   		   table-out))


(make-linear-jobs
 '((attatch-a table-in part-a tray-a)
   (screw-a machine-a)
   (attatch-b table2 part-b tray-b)
   (attatch-c table2 part-c tray-c)
   (screw-c machine-b)))

(make-initial-bases '(b1))
(make-initial-bases '(b1 b2 b3))