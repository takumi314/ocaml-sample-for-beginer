(* インポート *)
#use "fold_right.ml"

(* 目的 : n から 1 までのリストをつくる *)
(* enumerate : int -> int list *)
let rec enumerate n =
  if n = 0 then []
  else n :: enumerate ( n - 1 )

(* テスト *)
let test1 = enumerate 0 = []
let test2 = enumerate 1 = [1]
let test3 = enumerate 2 = [2; 1]
let test4 = enumerate 10 = [10; 9; 8; 7; 6; 5; 4; 3; 2; 1]

(* 目的 : 受け取った整数 n が整数 x で割り切れるかどうか判断します *)
(* is_mod_zero : int -> int -> bool *)
(* let is_mod_zero n x = (n mod x = 0) *)

(* 目的 : n の約數のリストを返す *)
(* divisor : int -> int list *)
let rec divisor n =
  filter (fun x -> n mod x = 0) (enumerate n)

(* テスト *)
let test5 = divisor 0 = []
let test6 = divisor 1 = [1]
let test7 = divisor 6 = [6; 3; 2; 1]
let test8 = divisor 12 = [12; 6; 4; 3; 2; 1]


(* 目的 : n 以下の完全数のリストを返す *)
(* perfect_number : int -> int list *)
let perfect_number n =
  filter (fun n -> fold_right (+) (divisor n) 0 - n = n) (enumerate n)

(* テスト *)
let test9 = perfect_number 0 = []
let test10 = perfect_number 1 = []
let test11 = perfect_number 2 = []
let test12 = perfect_number 3 = []
let test13 = perfect_number 4 = []
let test14 = perfect_number 6 = [6]
let test15 = perfect_number 28 = [28; 6]
let test16 = perfect_number 496 = [496; 28; 6]
