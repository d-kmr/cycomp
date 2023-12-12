# testB15.cy
# Aplas2011(Brotherston) #15
# Valid
#
# In our condition
# BSresult: 4.21s

binPath(x,y) |- binTreeSeg(x,y)

---
binTree(x) := x -> (Nil,Nil) | x -> (l,Nil) * binTree(l) | x -> (Nil,r) * binTree(r) | x -> (l,r) * binTree(l) * binTree(r)
binTreeSeg(x,y) := x ->  (y,Nil) | x -> (Nil,y) | x -> (l,Nil) * binTreeSeg(l,y) | x -> (Nil,r) * binTreeSeg(r,y) | x -> (l,r) * binTreeSeg(l,y) * binTree(r) | x -> (l,r) * binTree(l) * binTreeSeg(r,y) 
binListFst(x) := x -> (Nil,z) | x -> (y,z) * binListFst(y)
binListSnd(x) := x -> (y,Nil) | x -> (y,z) * binListSnd(z)
binPath(x,y) := x -> (y,z) | x -> (z,y) | x -> (l,r) * binPath(l,y) | x -> (l,r) * binPath(r,y)
