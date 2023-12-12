# testB02.cy
# Aplas2011(Brotherston) #02
# Valid
#
# Out of our condition -> Error
# BSresult: 2.37s

rlist(x,z) * rlist(z,y) |- rlist(x,y)

---
rlist(x,y) := x -> (y) | rlist(x,z) * z -> (y)
