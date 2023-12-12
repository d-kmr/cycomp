# testB10.cy
# Aplas2011(Brotherston) #10
# Valid
#
# In our condition
# BSresult: 5.44s

lsO(z,y) * lsO(x,z) |- lsE(x,y)

---
lsO(a,b) := a -> (b) | a -> (z) * lsE(z,b)
lsE(a,b) := a -> (z) * lsO(z,b)