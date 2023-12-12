# testB03.cy
# Aplas2011(Brotherston) #03
# Valid
#
# In our condition
# BSresult: 2.56s

z -> (y) * list(x,z) |- list(x,y)

---
list(x,y) := x -> (y) | x -> (z) * list(z,y)
