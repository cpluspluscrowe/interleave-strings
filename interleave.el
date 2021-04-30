                                        ; Sample input
                                        ; two lines, each line contains one string
                                        ; we want to interleave the two strings for hte infal output

                                        ; Example
                                        ;hacker
                                        ;ranker
                                        ; Output
                                        ;hraacnkkeerr

(defun identity (i)
  i)

(defun interleave-characters (c1 c2 built s1-remaining s2-remaining)
  (cond ((eq nil c1) built)
        (t (interleave-characters (car s1-remaining)
                                  (car s2-remaining)
                                  (append built (list c1)
                                          (list c2))
                                  (cdr s1-remaining)
                                  (cdr s2-remaining)))))

(defun interleave (s1 s2)
  (let ((s1-characters (-map #'identity s1))
        (s2-characters (-map #'identity s2)))
    (string-join (-map #'char-to-string (interleave-characters (car s1-characters)
                                                               (car s2-characters)
                                                               (list)
                                                               (cdr s1-characters)
                                                               (cdr s2-characters))))))

                                        ; (setq s1 "hacker")
                                        ; (setq s2 "ranker")
                                        ; call (interleave s1 s2)
                                        ; output "hraacnkkeerr"


