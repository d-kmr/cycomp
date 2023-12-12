# testN15.cy
# Aplas2018 #15
# Invalid
#
# no factor
# NKresult: 0.16s
# Changeset04: 12.541s (wrong answer)
#

lsn(x,y) * lsn(y,z) |- lsn(x,z)

---
lsn(x,y) := x <> y && x -> (y) | Ex z (x <> y && x -> (z) * lsn(z,y))