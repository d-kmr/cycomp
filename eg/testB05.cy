# testB05.cy
# Aplas2011(Brotherston) #05
# Valid
#
# Out of our condition -> valid (why?)
# BSresult: 2.78s

z -> (y) * pelist(z,y) |- pelist(x,y)

---
pelist(x,y) := x = y && Emp | x -> (z) * list(z,y)
