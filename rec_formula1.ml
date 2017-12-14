(* 目的 :
    a_0 = 3
    a_n = 2 * a_n-1 -1 (n >= 1)
*)
(* rec_formula1 : int -> int *)
let rec rec_formula1 n =
  if n = 0 then 3
  else 2 * rec_formula1 (n-1) - 1

(* テスト *)
let test1 = rec_formula1 0 = 3
let test2 = rec_formula1 1 = 5
let test3 = rec_formula1 2 = 9
let test4 = rec_formula1 3 = 17
