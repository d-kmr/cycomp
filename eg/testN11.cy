# testN11.cy
# Aplas2018 #11
# Invalid
#
# no factor
# NKresult: 0.09s
# Changeset04: 23.594s (wrong answer)
#

lsa(x,y,y) |- ls(x,y) * ls(y,y)

---
ls(x,y) := x -> (y) | Ex z (x -> (z) * ls(z,y))
lsa(x,y,z) := x = z && x -> (y) | Ex w (x = z && x -> (w) * lsa(w,y,w)) | Ex w (x -> (w) * lsa(w,y,z))