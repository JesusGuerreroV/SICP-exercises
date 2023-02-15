#lang simply-scheme

#| Exercise 1.3:
Define a procedure that takes three numbers as arguments
and returns the sum of the squares of the two larger numbers. |#

(define (sum-of-largest-two-squared x y z)
  (cond ((and
          (or (> x y) (> x z))
          (or (> y x) (> y z))) (sum-sqrs x y))
        ((and
          (or (> y x) (> y z))
          (or (> z x) (> z y))) (sum-sqrs y z))
        (else (sum-sqrs x z))))
  

(define (sum-sqrs x y)
  (+ (square x) (square y)))

(define (square x)
  (* x x))

 (sum-of-largest-two-squared 1 2 3) ;13 
 
 (sum-of-largest-two-squared 1 1 1) ;2

 (sum-of-largest-two-squared 1 2 2) ;8

 (sum-of-largest-two-squared 1 1 2) ;5

 (sum-of-largest-two-squared 1 4 3) ;25