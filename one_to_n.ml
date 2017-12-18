(* インポート *)
#use "fold_right.ml"


(* 目的 : n から 1 までのリストをつくる *)
(* enumerate : int -> int list *)
let rec enumerate n =
  if n = 0 then []
  else n :: enumerate ( n - 1 )


(* 目的 : １から受け取った自然数までの合計を求める関数 *)
(* one_to_n : int -> int *)
let one_to_n n = fold_right (+) (enumerate n) 0

(* テスト *)
let test1 = one_to_n 0 = 0
let test2 = one_to_n 1 = 1
let test3 = one_to_n 2 = 3
let test4 = one_to_n 10 = 55
