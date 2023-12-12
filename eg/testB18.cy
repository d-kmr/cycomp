# testB18.cy
# Aplas2011(Brotherston) #18
# Valid
#
# Out our condition (size>=0) -> Modified (size>=1)
# BSresult: 8.61s

binTreeSeg(x,y) * binTree(y) |- binTree(x)

---
binTree(x) :=
	x -> (Nil,Nil)
	| Ex l (x -> (l,Nil) * binTree(l))
	| Ex r (x -> (Nil,r) * binTree(r))
	| Ex l,r (x -> (l,r) * binTree(l) * binTree(r))
binTreeSeg(x,y) :=
	x ->  (y,Nil)
	| x -> (Nil,y)
	| Ex l (x -> (l,Nil) * binTreeSeg(l,y))
	| Ex r (x -> (Nil,r) * binTreeSeg(r,y))
	| Ex l,r (x -> (l,r) * binTreeSeg(l,y) * binTree(r))
	| Ex l,r (x -> (l,r) * binTree(l) * binTreeSeg(r,y))
