# testN20.cy
# Aplas2018 #20
# Valid
#
# no factor
# NKresult: 47.06s
# Changeset04: timeout
#

#Up(p) && dll(h,t,p,n) |- dllrev(t,h,n,p)
dll(h,t,p,n) * p -> (Nil,Nil) |- dllrev(t,h,n,p) * p -> (Nil,Nil)

---
dll(h,t,p,n) := h = t && h -> (p,n) | Ex z (h -> (p,z) * dll(z,t,h,n))
dllrev(h,t,p,n) := h = t && h -> (n,p) | Ex z (h -> (z,p) * dllrev(z,t,h,n))