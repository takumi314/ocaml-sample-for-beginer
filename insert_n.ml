(* 目的: 整数のリスト lst に 整数 n を昇順となる位置に挿入する *)
(* insert_n : int list int -> list *)
let rec insert_n lst n = match lst with
    [] -> n :: []
  | first :: rest -> if n <= first then n :: first :: rest
                                   else first :: insert_n rest n

(* テスト *)
let test1 = insert_n [] 1 = [1]
let test2 = insert_n [2] 1 = [1; 2]
let test3 = insert_n [2] 3 = [2; 3]
let test4 = insert_n [1; 2] 0 = [0; 1; 2]
let test5 = insert_n [1; 2] 3 = [1; 2; 3]
let test6 = insert_n [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8] 
