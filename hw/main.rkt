#lang racket
(require "parser.rkt")
(require "util.rkt")
(require "interpreter.rkt")



;a-> (var-exp a): parser will convert a symbol into var-exp
;(parse a) -> (var-exp a)
;(parse 1) -> error
(parse 'a)
(parse 'b)
(parse 1)
;(var-exp a): interpreter will find out the a as a variable name from the environment, and tell us what it is

;homework week5 day 1, 9/22
;test "process" function from interpreter, and confirm that it works in main
(process (parse 'a)) ;-> 1
(process (parse 'c)) ;-> "ERROR: variable not found"
(process (parse 1)) ;-> a certain error