(* 以下の3行はヘッダーとする *)

(* 時給（円） *)
let low_cost = 1000

(* 基本給 *)
let base = 0

(* 優遇給 *)
let middle_cost = 5000

(* 目的: 働いた時間 x ( <= 10) に応じたアルバイト代を計算する *)
let lowest_allowance x = low_cost * x + base

(* 目的: 働いた時間 x ( > 10)は優遇時給でアルバイト代を計算する *)
let middle_allowance x = middle_cost * ( x - 10 ) + low_cost * 10 + base

(* allowance2 : int -> int *)
let allowance2 x =
    if x > 10 then middle_allowance x
              else lowest_allowance x

(* テスト *)
let test1 = allowance2 5 = 5000
let test2 = allowance2 10 = 10000
let test3 = allowance2 11 = 15000
