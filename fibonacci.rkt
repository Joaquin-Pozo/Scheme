#lang scheme
(define fibonacci
  (lambda (n)
    (define (fib-rec a b count)
      (if (= count n)
          a
          (fib-rec b (+ a b) (+ count 1))))
    (fib-rec 0 1 0)))
(fibonacci 5)
