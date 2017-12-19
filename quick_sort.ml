(* 目的 : lst の中から n より小さい要素のみを取り出す *)
(* take_less : int -> int list -> int list *)
let take_less n lst = filter (fun x -> x < n) lst

(* テスト *)
let test1 = take_less 2 [] = []
let test2 = take_less 2 [2] = []
let test3 = take_less 2 [1; 3] = [1]
let test4 = take_less 2 [0; 1] = [0; 1]
let test5 = take_less 2 [3; 4] = []


(* 目的 : lst の中から n より大きな要素のみを取り出す *)
(* take_greater : int -> int list -> int list *)
let take_greater n lst = filter (fun x -> n < x) lst

(* テスト *)
let test6 = take_greater 2 [] = []
let test7 = take_greater 2 [2] = []
let test8 = take_greater 2 [1; 3] = [3]
let test9 = take_greater 2 [0; 1] = []
let test10 = take_greater 2 [3; 4] = [3; 4]


(* 目的 : 受け取った lst をクイックソートを使って昇順に整列する *)
(* quick_sort : int list -> int list *)
let rec quick_sort lst = match lst with
    [] -> [] (* 自明に答えが出るケース *)
  | first :: rest -> quick_sort (take_less first rest)
                     @ [first]
                     @ quick_sort (take_greater first rest)

(* テスト *)
let test11 = quick_sort [] = []
let test12 = quick_sort [1] = [1]
let test13 = quick_sort [1; 2] = [1; 2]
let test14 = quick_sort [2; 1] = [1; 2]
let test15 = quick_sort [3; 2; 1] = [1; 2; 3]
let test16 = quick_sort [4; 5; 2; 8; 9; 1; 6; 3; 7]
             = [1; 2; 3; 4; 5; 6; 7; 8; 9]
