# testN13.cy
# Aplas2018 #13
# Valid
#
# factor is not used
# NKresult: 0.03s
# Changeset04: 12.569s
#

lsn(x,y) * lsn(y,z) * z -> (Nil) |- lsn(x,z) * z -> (Nil)

---
lsn(x,y) := x <> y && x -> (y) | Ex z (x <> y && x -> (z) * lsn(z,y))