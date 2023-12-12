# testB07.cy
# Aplas2011(Brotherston) #07
# Valid
#
# Out of our condition -> invalid
# BSresult: 3.54s

dll(u,v,x,y) |- sll(u,v)

---
sll(x,y) := x = y && Emp | x -> (z,u) * sll(z,y)
dll(a,b,c,d) := a = b & c = d && Emp | a -> (x,d) * dll(x,b,c,a)