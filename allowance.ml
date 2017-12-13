(* 以下の3行はヘッダーとする *)

(* 時給（円） *)
let cost = 1000

(* 基本給 *)
let base = 0

(* 目的: 働いた時間 x に応じたアルバイト代を計算する *)
(* allowance : int -> int *)
let allowance x = cost * x + base

(* テスト *)
let test1 = allowance 8 = 8000
let test2 = allowance 16 = 16000
let test3 = allowance 4 = 4000
