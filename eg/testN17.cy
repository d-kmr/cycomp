# testN17.cy
# Aplas2018 #17
# Valid
#
# no factor
# NKresult: 23.05s
# Changeset04: timeout
#

dll(h,t,p,n) * dll(n,p,t,h) |- dll(h,p,p,h)

---
dll(h,t,p,n) := h = t && h -> (p,n) | Ex z (h -> (p,z) * dll(z,t,h,n))