# testN07.cy
# Aplas2018 #7
# Valid
#
# no factor
# NKresult: 3.05s
#
# Changeset04: not finished (2018.08.13)
#

lsa(x,y,z) |- ls(x,y)

---
ls(x,y) := x -> (y) | Ex z (x -> (z) * ls(z,y))
lsa(x,y,z) := x = z && x -> (y) | Ex w (x = z && x -> (w) * lsa(w,y,w)) | Ex w (x -> (w) * lsa(w,y,z))