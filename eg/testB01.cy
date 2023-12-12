# testB01.cy
# Aplas2011(Brotherston) #01
# Valid
#
# Out of our condition -> Error
# BSresult: 2.37s

x -> (y) * rlist(y,z) |- rlist(x,z)

---
rlist(x,y) := x -> (y) | rlist(x,z) * z -> (y)
