# testB17.cy
# Aplas2011(Brotherston) #17
# Valid
#
# In our condition -> hoge ???
# BSresult: 8.78s

binTreeSeg(x,z) * binTreeSeg(z,y) |- binTreeSeg(x,y)

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