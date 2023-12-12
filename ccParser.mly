// Parser for CyComp 2018/05/13

%{
open CcSyntax
%}

%token <string> IDENT  // x, y, P, ...
  
%token AST	// '*'
%token EQ	// '='
%token NEQ	// "=/"

%token LPAREN   // '('
%token RPAREN   // ')'
%token COMMA    // ','

%token NIL      // "Nil"
%token EMP      // "Emp"
%token EX	// "Ex"
%token OUT	// "Out"
%token UP	// "Up"
%token DOWN	// "Dn"
%token AND      // '&'
%token OR       // '|'
%token PTO	// "->"
%token VDASH    // "|-"
%token SEP      // "---"
%token DEFEQ	// ":="
%token ANDAND	// "&&"

%token EOF 

// 結合力(優先度が低い順)
%nonassoc VDASH
%nonassoc EX
%nonassoc COLON
%left AND OR
%left EQ NEQ
%left AST
%nonassoc PTO UP DOWN OUT
%left VAR NIL EMP LPAREN

%start main
%type <CcSyntax.ProgSys.t> main
%type <string list> ident_seq
%type <T.t> term
%type <P.t> pure_exp
%type <PP.t> pure
%type <S.t> spat_exp
%type <G.t> gamma_exp
%type <GG.t> gamma
%type <SH.t> sh
%type <Entl.t> entl
%type <IndDef.t> ind_def
%type <IndSys.t> ind_sys
%type <ProgSys.t> prog_sys
%%

// 
main:
  | prog_sys EOF
     { $1 }
;

ident_seq:
  | IDENT
      { [$1] }
  | ident_seq COMMA IDENT
      { $1 @ [$3] }
  | LPAREN ident_seq RPAREN
	  { $2 }
;
  
term:
  | IDENT
    { SHterm.Var $1 }
  | NIL
    { SHterm.Nil }
  | LPAREN term RPAREN
      { $2 }
  | error
    { 
      let message =
        Printf.sprintf 
          "parse error at line %d:%d-%d"
          ((Parsing.symbol_start_pos ()).Lexing.pos_lnum)
		  (Parsing.symbol_start ())
		  (Parsing.symbol_end ())
	    in
	    failwith message
    }	  
;

term_seq:
  | term
      { [$1] }
	  
  | term_seq COMMA term
      { $1 @ [$3] }

  | LPAREN term_seq RPAREN
	  { $2 }
	  
  | error
    { 
      let message =
        Printf.sprintf 
          "parse error (term_seq) near characters %d-%d"
          (Parsing.symbol_start ())
	      (Parsing.symbol_end ())
	    in
	    failwith message
    }	  	  
;

pure_exp:
  | term EQ term
    { (Eq,$1,$3) }
    
  | term NEQ term
    { (Neq,$1,$3) }
;

pure:
  | pure_exp
	  { [$1] }
  | pure AND pure_exp
	  { $1 @ [$3] }
  | LPAREN pure RPAREN
	{ $2 }
;

spat_exp:
  | EMP					// Emp
	  { SHspatExp.Emp }
  | term PTO term_seq			// t -> (t,..,t)
     { SHspatExp.Pto($1,$3) }
  | IDENT LPAREN term_seq RPAREN	// P ( t,..,t )
      { SHspatExp.Pr($1,$3) }
  | LPAREN spat_exp RPAREN
	  { $2 }
;

gamma_exp:
  | spat_exp			// Sigma
	  { ($1,[]) }
  | spat_exp AND DOWN term_seq	// Sigma & Dn(x,y)
          { ($1,$4) }
  | DOWN term_seq AND spat_exp	// Dn(x,y) & Sigma &
          { ($4,$2) }
;

gamma:
  | gamma_exp
	  { [$1] }
  | gamma AST gamma_exp
	  { $1 @ [$3] }
;

sh_up:
  | UP term_seq
	  { $2 }
;

sh_out:
  | OUT term_seq
	  { $2 }
;

sh_core:
  | gamma
      { ([],$1) }
  | pure ANDAND gamma
	  { ($1,$3) }
;  

sh_body:
  | sh_core
	  { let (pi,gm) = $1 in ([],[],pi,gm) }
	  
  | sh_up ANDAND sh_core
	  { let (pi,gm) = $3 in ($1,[],pi,gm) }
	  
  | sh_out ANDAND sh_core
	  {	let (pi,gm) = $3 in ([],$1,pi,gm) }

  | sh_up ANDAND sh_out ANDAND sh_core
	  {	let (pi,gm) = $5 in ($1,$3,pi,gm) }

  | sh_out ANDAND sh_up ANDAND sh_core
	  {	let (pi,gm) = $5 in ($3,$1,pi,gm) }
;

sh:
  | sh_body
      {
		let (up1,out1,pi1,gm1) = $1 in
		{ SH.ex=[]; SH.up=up1; SH.out=out1; SH.pi=pi1; SH.gm=gm1 }
	  }
	  
  | EX ident_seq LPAREN sh_body RPAREN
	  {
		let (up1,out1,pi1,gm1) = $4 in
		{ SH.ex=$2; SH.up=up1; SH.out=out1; SH.pi=pi1; SH.gm=gm1 }
	  }
;

def_head:
  | IDENT LPAREN ident_seq RPAREN
	  { ($1,$3) }
;

def_body:
  | sh
	  { [$1] }
  | OR sh
      { [$2] }
  | def_body OR sh
	  { $1 @ [$3] }
;

ind_def:
  | def_head DEFEQ def_body
	  {
		let (pr,prm) = $1 in
		(pr,prm,$3)
	  }
;

ind_sys:
  | SEP
	  { [] }

  | ind_sys ind_def
	  { $1 @ [$2] }
;

prog_sys:
  | entl ind_sys
	  { ($1,$2) }
;

entl_right:
  | sh
	  { [$1] }
  
  | entl_right OR sh
	  { $1 @ [$3] }
;

entl:
  | sh VDASH entl_right
	  { { Entl.name=""; Entl.ant=$1; Entl.suc=$3 } }
;

  
