# testN06.cy
# Aplas2018 #6
# Valid
#
# factor is used
# NKresult: 0.09s
#
# Changeset04: 0.509s
#

ls(x,x) & Dn(y) |- ls(y,y)

---
ls(x,y) := x -> (y) | Ex z (x -> (z) * ls(z,y))
