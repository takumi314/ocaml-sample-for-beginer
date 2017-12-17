(* 目的 : init から初めて lst の要素を右から順に f を施し込む *)
(* fold_right : ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b *)
let rec fold_right f lst init = match lst with
    [] -> init
  | first :: rest -> f first (fold_right f rest init)


(* 目的 : first と rest_result を加える *)
(* add_int : int -> int -> int  *)
(*
  let rec add_int first rest_result = first + rest_result
*)

(* 目的 : 受け取ったリスト lst の各要素の和を求める *)
(* sum : int list -> int *)
let rec sum lst =
  let rec add_int first rest_result = first + rest_result
  in fold_right add_int lst 0

(* prefix関数 - 関数を先頭に置き, 引数をその後に並べる記法 (+) a b = a + b
  let rec sum lst = fold_right (+) lst 0
*)

(* テスト *)
(*
  let test0 = sum [] = 0
  let test1 = sum [2] = 2
  let test2 = sum [1; 3] = 4
  let test3 = sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = 55
*)


(* 目的 : firstは無視して rest_result に1を加える *)
(* add_one : int -> int -> int *)
(*
  let add_one first rest_result = 1 + rest_result
*)

(* 目的 : 受け取ったリスト lst の長さを求める *)
(* length : 'a list -> int *)
let rec length lst =
  let add_one first rest_result = 1 + rest_result
  in fold_right add_one lst 0

let test4 = length [] = 0
let test5 = length [1] = 1
let test6 = length ["a"] = 1
let test7 = length [true] = 1
let test8 = length [1.5] = 1
let test9 = length [0; 1] = 2
let test10 = length ["a"; "b"; "c"; "d"] = 4


(* 目的 : first を リスト lst_result の先頭に加える *)
(* cons : 'a -> 'a lsit -> 'a list *)
(*
  let rec cons first lst_result = first :: lst_result
*)

(* テスト *)
(*
  let test11 = cons 1 [] = [1]
  let test12 = cons 1 [2] = [1; 2]
  let test13 = cons 1 [2; 3] = [1; 2; 3]
*)

(* 目的 : lst1 と lst2 を受け取って, それらを結合したリストを返す *)
(* append : 'a list -> 'a list -> 'a list *)
let append lst1 lst2 =
  let rec cons first lst_result = first :: lst_result
  in fold_right cons lst1 lst2

(* テスト *)
let test1 = append [] [] = []
let test2 = append [] [1; 2] = [1; 2]
let test3 = append [1; 2] [] = [1; 2]
let test4 = append [1; 2] [3; 4] = [1; 2; 3; 4]
let test5 = append ["a"; "b"; "c"; "d"] ["e"; "f"]
            = ["a"; "b"; "c"; "d"; "e"; "f"]
