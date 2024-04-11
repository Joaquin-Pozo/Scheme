#lang scheme

;; uso comun de apply
(define suma-apply (apply + (list 1 2 3)))
suma-apply

;; implementacion de apply en recursion de cola
;; guardo el resultado en un acumulador (resultado)
(define (apply-cola operador lst)
  (define (wrap lst resultado)
    (cond
      [(null? lst) resultado]
      [(wrap (cdr lst) (operador (car lst) resultado))]))
  (cond
    [(eq? operador +) (wrap lst 0)]
    [(eq? operador *) (wrap lst 1)]))
(define suma-apply-cola (apply-cola + (list 1 2 3)))
suma-apply-cola

;; implementacion de apply en recursion natural
;; sumar los elementos de una lista y retornar

(define (apply-natural operador lst)
  (cond
    [(null? lst) (if (eq? operador +) 0 1)]
    [(operador (car lst) (apply-natural operador (cdr lst)))]))
(define suma-apply-natural (apply-natural * (list 1 2 5)))
suma-apply-natural
