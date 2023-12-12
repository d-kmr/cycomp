# testN20.cy
# Aplas2018 #21
# Valid
#
# no factor
# NKresult: 47.06s
# Changeset04: timeout
#

dll(h,t,p,n) |- dllrev(t,h,n,p)


---
dll(h,t,p,n) := h = t && h -> (p,n) | Ex z (h -> (p,z) * dll(z,t,h,n))
dllrev(h,t,p,n) := h = t && h -> (n,p) | Ex z (h -> (z,p) * dllrev(z,t,h,n))