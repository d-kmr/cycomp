# testN04.cy
# Aplas2018 #4
# Valid
#
# no factor
# NKresult: 0.01s
# Changeset04: 0.023s
#

ls(x,y) * ls(y,Nil) |- ls(x,Nil)

---
ls(x,y) := x -> (y) | Ex z (x -> (z) * ls(z,y))
