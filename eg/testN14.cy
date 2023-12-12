# testN14.cy
# Aplas2018 #14
# Valid
#
# factor is not used
# NKresult: 0.03s
# Changeset04: 1.547s
#

lsn(x,y) * lsn(y,z) * to(z,Nil) |- lsn(x,z) * to(z,Nil)

---
to(x,y) := x -> (y)
lsn(x,y) := x <> y && x -> (y) | Ex z (x <> y && x -> (z) * lsn(z,y))