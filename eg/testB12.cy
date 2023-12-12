# testB12.cy
# Aplas2011(Brotherston) #12
# Valid
#
# In our condition
# BSresult: 5.57s

lsE(x,z) * lsO(z,y) |- lsO(x,y)

---
lsO(a,b) := a -> (b) | a -> (z) * lsE(z,b)
lsE(a,b) := a -> (z) * lsO(z,b)