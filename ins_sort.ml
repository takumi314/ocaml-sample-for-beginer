(* 挿入法アルゴリズム *)
(* 目的: 整数のリスト lst に 整数 n を昇順となる位置に挿入する *)
(* insert_n : int list int -> list *)
let rec insert_n lst n = match lst with
    [] -> n :: []
  | first :: rest -> if n <= first then n :: first :: rest
                                   else first :: insert_n rest n

(* 目的 : 整数のリスト lst を昇順に整列する *)
(* ins_sort : int list -> int list *)
let rec ins_sort lst = match lst with
    [] -> []
  | first :: rest -> insert_n ( ins_sort rest ) first

(* テスト *)
let test1 = ins_sort [] = []
let test2 = ins_sort [2] = [2]
let test3 = ins_sort [1; 2] = [1; 2]
let test4 = ins_sort [2; 1] = [1; 2]
let test5 = ins_sort [3; 1; 2] = [1; 2; 3]
let test6 = ins_sort [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
let test7 = ins_sort [5; 4; 3; 2; 1; 0] = [0; 1; 2; 3; 4; 5]

(*
    # #use "ins_sort.ml" ;;
    val insert_n : 'a list -> 'a -> 'a list = <fun>
    val ins_sort : 'a list -> 'a list = <fun>
    val test1 : bool = true
    val test2 : bool = true
    val test3 : bool = true
    val test4 : bool = true
    val test5 : bool = true
    val test6 : bool = true
    val test7 : bool = true
*)
