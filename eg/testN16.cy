# testN16.cy
# Aplas2018 #16
# Invalid
#
# no factor
# NKresult: 0.09s
# Changeset04: 6.918s (wrong answer)
#

x <> z && lsn(x,y) * lsn(y,z) |- lsn(x,z)

---
lsn(x,y) := x <> y && x -> (y) | Ex z (x <> y && x -> (z) * lsn(z,y))