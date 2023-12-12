# testN02.cy
# Aplas2018 #2
# Valid
#
# factor is used
# NKresult: 0.54s
# Changeset04: not finished
#

tri(x,y,z) |- tri(y,z,x)

---
to(x,y) := x -> (y)
tri(x,y,z) := Ex w ( y = w && x -> (w) * tri1(w,z,x) )
tri1(y,z,x) := Ex w ( z = w && y -> (w) * to(w,x) )