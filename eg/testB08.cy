# testB08.cy
# Aplas2011(Brotherston) #08
# Valid
#
# Out of our condition -> invalid
# BSresult: 3.54s

dll(u,v,x,y) |- bsll(x,y)

---
bsll(c,d) := x = y && Emp | bsll(c,z) * z -> (u,d)
dll(a,b,c,d) := a = b & c = d && Emp | a -> (x,d) * dll(x,b,c,a)