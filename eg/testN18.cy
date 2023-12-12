# testN18.cy
# Aplas2018 #18
# Invalid
#
# no factor
# NKresult: 21.17s
# Changeset04: 
#

dll(h,t,p,n) * dll(n,p,t,h) |- dll(h,p,h,p)

---
dll(h,t,p,n) := h = t && h -> (p,n) | Ex z (h -> (p,z) * dll(z,t,h,n))