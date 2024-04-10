#lang scheme
;uso comun de map
(define map-normal (map (lambda (x) (+ x 1)) (list 1 2 3)))
map-normal
;map en recursion natural
(define (map-natural fn lst)
  (cond
    [(null? lst) null]
    [(cons (fn (car lst))(map-natural fn (cdr lst)))]))
(define map-rec-natural (map-natural (lambda (x) (+ x 1)) (list 1 2 3)))
map-rec-natural
;map en recursion de cola
(define (map-cola fn lst)
  (define (wrap lst resultado)
    (if (null? lst)
        (reverse resultado)
        (wrap (cdr lst) (cons (fn (car lst)) resultado))))
  (wrap lst null))
(define map-rec-cola (map-cola (lambda (x) (+ x 1)) (list 1 2 3)))
map-rec-cola