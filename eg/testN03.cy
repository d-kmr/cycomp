# testN03.cy
# Aplas2018 #3
# Valid
#
# factor is used
# NKresult: 0.57s
# Changeset04: not finished
#

tri(x,y,z) |- tri(z,x,y)

---
to(x,y) := x -> (y)
tri1(w,z,x) := Ex v ( v = z && w -> (v) * to(v,x) )
tri(x,y,z) := Ex w ( y = w && x -> (w) * tri1(w,z,x) )
