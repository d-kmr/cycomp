# testB06.cy
# Aplas2011(Brotherston) #06
# Valid
#
# Out of our condition -> valid (why?)
# BSresult: 1.96s

pelist(z,y) * pelist(x,z) |- pelist(x,y)

---
pelist(x,y) := x = y && Emp | x -> (z) * list(z,y)
