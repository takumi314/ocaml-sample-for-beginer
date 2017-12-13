open Core
open Lwt
open Cohttp
open Cohttp_lwt_unix
open Soup

(* SlackへPost *)
let send_slack body =
  let webhook_token = "xxx" in
  let channel = "%23xxx" in
  let webhook_url = "https://xxx.slack.com/services/hooks/slackbot?token=" ^ webhook_token ^ "&channel=" ^ channel  in
  let params = [body] in
  Client.post
    ~body:(Cohttp_lwt.Body.of_string_list params)
    (Uri.of_string webhook_url) >>= fun (resp, body) ->
  let code = resp |> Response.status |> Code.code_of_status in
  body |> Cohttp_lwt.Body.to_string >|= fun body ->
  body

(* HTMLを取得 *)
let fetch_html =
  let target_url = "https://ocaml.org/" in
  Client.get
    (Uri.of_string target_url) >>= fun (resp, body) ->
  let code = resp |> Response.status |> Code.code_of_status in
  body |> Cohttp_lwt.Body.to_string >|= fun body ->
  body

(* HTMLパース *)
let parse_html raw_html =
  Lwt.return((parse raw_html) $ "title" |> R.leaf_text)

(* main *)
let () =
  let res = fetch_html
    >>= parse_html
    >>= send_slack in
  print_endline ("result\n" ^ Lwt_main.run (res))
