# testN05.cy
# Aplas2018 #5
# Valid
#
# factor is not used
# NKresult: 0.12s
# Changeset04: 0.330s
#

ls(x,y) * ls(y,z) |- ls(x,z)

---
ls(x,y) := x -> (y) | Ex z (x -> (z) * ls(z,y))
