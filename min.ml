(* int list は
    - []              空リスト, あるいは
    - first :: rest   最初の要素が first で残りのリストが rest
                      (rest が自己参照のケース)
*)

(* 目的 : 受け取ったリスト lst の中の最小値を返す *)
(* sum : int list -> int *)
let rec min lst = match lst with
    [] -> max_int
  | first :: rest -> let minimum = min rest in if first <= minimum then first
                                          else minimum

(* テスト *)
let test1 = min [3] = 3
let test2 = min [1; 2] = 1
let test3 = min [3; 2] = 2
let test4 = min [3; 2; 6; 4; 1; 8] = 1

(* 追記:
   入力リストの要素がすべて max_int だった場合,
   あるいは空リストだった場合は区別できない。

   対応:  例外処理を記述する
*)
