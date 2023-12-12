SOURCES = tools.ml options.ml slSyntax.ml slSatcheck.ml slxSyntax.ml slxSatcheck.ml ccSyntax.ml ccParser.ml ccLexer.ml ccSatcheck.ml ccWand.ml ccFactorAnalysis.ml ccIndDefAnalysis.ml ccEntlcheck.ml ccEntlcheckControl.ml main_cycomp.ml
CMOS = tools.cmo options.cmo slSyntax.cmo slSatcheck.cmo slxSyntax.cmo slxSatcheck.cmo ccSyntax.cmo ccParser.cmo ccLexer.cmo ccSatcheck.cmo ccWand.cmo ccFactorAnalysis.cmo ccIndDefAnalysis.cmo ccEntlcheck.cmo ccEntlcheckControl.cmo main_cycomp.cmo
CMIS = tools.cmi options.cmi slSyntax.cmi slSatcheck.cmi ccSyntax.cmi slxSatcheck.cmi ccSyntax.cmi ccParser.cmi ccLexer.cmi ccSatcheck.cmi ccWand.cmi ccFactorAnalysis.cmi ccIndDefAnalysis.cmi ccEntlcheck.cmi ccEntlcheckControl.cmi main_cycomp.cmi
TARGET = cycomp

main: $(SOURCES) ccParser.mli ccParser.cmi
	ocamlc $(SOURCES) -o $(TARGET)

ccLexer.ml: ccLexer.mll
	ocamllex ccLexer.mll

ccParser.ml: ccParser.mly
	ocamlyacc ccParser.mly

ccParser.mli: ccParser.mly
	ocamlyacc ccParser.mly

ccParser.cmi: ccParser.mli ccSyntax.ml tools.ml
	ocamlc -c tools.ml ccSyntax.ml
	ocamlc -c ccParser.mli

clean: 
	rm $(CMOS) $(CMIS) ccParser.mli ccLexer.ml ccParser.ml
