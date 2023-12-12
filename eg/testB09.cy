# testB09.cy
# Aplas2011(Brotherston) #09
# Valid
#
# In our condition -> timeout
# BSresult: 8.86s

dll(w,v,x,z) * dll(u,w,z,y) |- dll(u,v,x,y)

---
dll(a,b,c,d) := a = c && a -> (b,d) | a -> (x,d) * dll(x,b,c,a)