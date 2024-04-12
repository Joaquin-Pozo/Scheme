#lang scheme
;uso comun de filter
(define filter-normal (filter (lambda (x) (even? x)) (list 1 2 3 4)))
filter-normal
;filter en recursion natural
(define (filter-natural fn lst)
  (cond
    [(null? lst) null]
    [(if (fn (car lst))
         (cons (car lst) (filter-natural fn (cdr lst)))
         (filter-natural fn (cdr lst)))]))
(define filter-rec-natural (filter-natural (lambda (x) (even? x)) (list 1 2 3 4)))
filter-rec-natural
;filter en recursion de cola
(define (filter-cola fn lst)
  (define (wrap lst acc)
    (cond
      [(null? lst) (reverse acc)]
      [(if (fn (car lst))
           (wrap (cdr lst) (cons (car lst) acc))
           (wrap (cdr lst) acc))]))
  (wrap lst null))
(define filter-rec-cola (filter-cola (lambda (x) (even? x)) (list 1 2 3 4)))
filter-rec-cola