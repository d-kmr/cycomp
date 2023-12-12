# testN05.cy
# Aplas2018 #5
# factor is not used
# valid
#
# NKresult: 0.12s
#
# Changeset04: 0.330s
#

lsApnd(x,y,z) |- ls(x,z)

---
lsApnd(x,y,z) := x -> (y) * ls(y,z) | Ex w (x -> (w) * lsApnd(w,y,z))
ls(x,y) := x -> (y) | Ex z (x -> (z) * ls(z,y))
