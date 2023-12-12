# testN19.cy
# Aplas2018 #19
# Valid
#
# factor is used
# NKresult: 0.73s
# Changeset04: 
#

dll(h,t,Nil,Nil) |- dllrev(t,h,Nil,Nil)

---
dll(h,t,p,n) := h = t && h -> (p,n) | Ex z (h -> (p,z) * dll(z,t,h,n))
dllrev(h,t,p,n) := h = t && h -> (n,p) | Ex z (h -> (z,p) * dllrev(z,t,h,n))