(*---------------------------------------------------------*)
(*  CYCOMP : entailment checker for CYclic COMPlete system *)
(*  compile: $ make -f makefile_cycomp                     *)
(*  usage:   $ cycomp < input                              *)
(*---------------------------------------------------------*)
open Tools
open CcSyntax
open CcParser
open CcSatcheck
open SlSyntax
open CcEntlcheck
open CcEntlcheckControl

module Opt = Options.Cycomp

(* read from file *)
let inputstr_stdin () =
let x = ref "" in
try
while true do
x := !x ^ (input_line stdin) ^ "\n"
done ;
"" (* dummy *)
with End_of_file -> !x ;;

let inputstr_file filename =
  let x = ref "" in
  let ic = open_in filename in
  try
	while true do
	  x := !x ^ (input_line ic) ^ "\n"
	done ;
	"" (* dummy *)
  with End_of_file -> close_in ic;!x
;;

(* parser *)
let parse str = 
  CcParser.main CcLexer.token 
    (Lexing.from_string str)
;;

(* Options *)
let f_help () = print_endline "help help";;

let _fname = ref "";;
let set_filename filename = _fname := filename;;

let msgUsage = "USAGE: cycomp -f FILE.cy\n";;

let speclist = [
    ("-f",Arg.String set_filename,"");
    ("-opt",Arg.Unit Opt.setOpt,"Optimized mode");
    ("-full",Arg.Unit Opt.setFull,"Full mode (do subset-split case analysis)");
    ("-debug", Arg.Unit Opt.setDebug, "Debugging mode");
];;



(* main *)
let () =
  let display_message () = print_endline msgUsage in
  Arg.parse speclist print_endline msgUsage;
  if !_fname = "" then display_message () else
  let str = inputstr_file !_fname in
  let ps = parse str in
  let (e,dd) = ps in
  Opt.sayifDebug "[Entailment]";
  Opt.doifDebug (fun _ -> CcSyntax.Entl.println e) ();
  Opt.sayifDebug "";
  Opt.sayifDebug "[Inductive System]";
  Opt.doifDebug (fun _ -> CcSyntax.IndSys.println dd) ();
  Opt.sayifDebug "====================";
  match CcEntlcheckControl.ccMain ps with
  | true -> print_endline "Valid"
  | false -> print_endline "Invalid"
;;
