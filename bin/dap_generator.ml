open Lwt
open Cohttp_lwt_unix

let dap_draft_4_schema =
  "https://microsoft.github.io/debug-adapter-protocol/debugAdapterProtocol.json"

let name = "DAP.json"

let downloadFile (url, file) =
  let ss : string =
    Lwt_main.run
      ( Client.get (Uri.of_string url) >>= fun (_, body) ->
        Cohttp_lwt.Body.to_string body )
  in

  let oc = Out_channel.open_text file in
  (* Step 2: Write to the Channel *)
  Out_channel.output_string oc ss;

  (* Step 3: Flush the Channel *)
  Out_channel.flush oc;
  (* Step 4: Close the Channel *)
  Out_channel.close oc
(* Step 1: Open the File *)
;;

let () = downloadFile (dap_draft_4_schema, name) in
()
