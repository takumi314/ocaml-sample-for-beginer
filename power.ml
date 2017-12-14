(* 目的 : 自然数 m と n を受けとったら, m の n 乗を求め流 *)
(* power : int -> int -> int *)
let rec power m n =
  if m = 0 then 0
  else if n = 0 then 1
  else m * power m (n-1)


(* テスト *)
let test1 = power 0 0 = 0
let test2 = power 2 0 = 1
let test3 = power 2 2 = 4
let test4 = power 2 3 = 8
let test5 = power 2 10 = 1024
