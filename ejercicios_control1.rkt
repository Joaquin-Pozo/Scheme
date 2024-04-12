#lang scheme
;****************************EJERCICIO 2****************************
;Funcion que calcula el largo de una lista
;Recursión natural
;DOM: lista (list)
;REC: largo_lista (int)
(define fn (lambda (lst)
             (if (null? lst)
                 0
                 (+ 1 (fn (cdr lst))))))
(define len (fn (list 1 2 3 4 5 6 7 8)))
;len

;Funcion que calcula el largo de una lista
;Recursión de cola
;DOM: lista (list)
;REC: largo_lista (int)
(define fn-cola (lambda (lst)
                  (define (wrapper lst acc)
                    (if (null? lst)
                        acc
                        (wrapper (cdr lst) (+ 1 acc))))
                  (wrapper lst 0)))

(define len-cola (fn-cola (list 1 2 3 4 5 6 7 8)))
;len-cola
;Funcion que calcula el largo de una lista
;Recursión de cola
;DOM: lista (list)
;REC: largo_lista (int)
;utilizando solo lambda
(define fn-cola2 (lambda (lst)
                   (define wrapper2 (lambda (lst acc)
                                      (if (null? lst)
                                          acc
                                          (wrapper2 (cdr lst) (+ 1 acc)))))
                   (wrapper2 lst 0)))
(define len-cola2 (fn-cola2 (list 1 2 3 4 5 6 7 8)))
;len-cola2
;****************************EJERCICIO 3****************************
;(define (reducir operacion lista)
;  (cond
;    [(null? lista) null]
;    [(operacion (car lista) (reducir operacion (cdr lista)))]))
;(define llamar-reducir (reducir + (list 2 2 3)))
;llamar-reducir
;**************PAUTA****************
(define reducir2 (lambda (f l)
                  (if (null? l) null
                      (if (null? (cdr l)) ; funciona para listas de al menos 1 elemento
                          (car l)
                          (f (car l) (reducir2 f (cdr l)))))))
(define llamar-reducir2 (reducir2 * (list 2 2 3)))
;llamar-reducir2
;**********************EJERCICIO 3)c)************************************
(define sumatoria (lambda (i n)
                    (if (= i n)
                        i
                        (+ i (sumatoria (+ i 1) n)))))
(define llamada-sumatoria (sumatoria 0 3))
llamada-sumatoria
;utilizando recursion de cola
(define sumatoria-cola (lambda (i n)
                         (define wrapper (lambda (i n acc)
                                           (if (= i n)
                                               (+ i acc)
                                               (wrapper (+ i 1) n (+ acc i)))))
                         (wrapper i n 0)))
(define llamada-sumatoria-cola (sumatoria-cola 0 3))
llamada-sumatoria-cola















