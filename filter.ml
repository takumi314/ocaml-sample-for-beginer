(* 目的 : 受け取った整数 x が整数かどうか判定する *)
(* isEven : int -> bool  *)
let isEven x = x mod 2 = 0

(* テスト *)
let test1 = isEven 0 = true
let test2 = isEven 1 = false
let test3 = isEven 2 = true
let test4 = isEven 3 = false
let test5 = isEven 4 = true


(* 目的 : リスト lst の中から条件 p を満たす要素のみを取り出す *)
(* filter : ( `a -> bool ) -> 'a list -> a' list *)
let rec filter p lst = match lst with
    [] -> []
  | first :: rest ->
    if p first then first :: filter p rest
    else filter p rest

(* テスト *)
let test6 = filter isEven [] = []
let test7 = filter isEven [1] = []
let test8 = filter isEven [2] = [2]
let test9 = filter isEven [2; 4] = [2; 4]
let test10 = filter isEven [1; 2; 3; 4; 5; 6; 7; 8] = [2; 4; 6; 8]


(* 目的 : リスト lst の中から偶数の要素のみを取り出す *)
(* even : int list -> int []  *)
let rec even lst = filter isEven lst

(* テスト *)
let test11 = even [] = []
let test12 = even [1] = []
let test13 = even [2] = [2]
let test14 = even [1; 2] = [2]
let test15 = even [2; 4] = [2; 4]
let test16 = even [1; 2; 3; 4; 5; 6; 7; 8] = [2; 4; 6; 8]
