#lang scheme
;uso comun de filter
(define filter-normal (filter (lambda (x) (odd? x)) (list 1 2 3 4)))
filter-normal
;filter en recursion natural
(define (filter-natural fn lst)
  (cond
    [(null? lst) null]
    []))