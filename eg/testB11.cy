# testB11.cy
# Aplas2011(Brotherston) #11
# Valid
#
# In our condition
# BSresult: 5.44s

lsE(x,z) * lsE(z,y) |- lsE(x,y)

---
lsO(a,b) := a -> (b) | a -> (z) * lsE(z,b)
lsE(a,b) := a -> (z) * lsO(z,b)