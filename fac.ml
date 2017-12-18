(* インポート *)
#use "fold_right.ml"

(* 目的 : 自然数 n の階乗を求める *)
(* fac : int -> int *)
let fac n = fold_right ( * ) (enumerate n) 1

(* テスト *)
let test1 = fac 0 = 1
let test2 = fac 1 = 1
let test3 = fac 2 = 2
let test4 = fac 3 = 6
let test5 = fac 4 = 24
