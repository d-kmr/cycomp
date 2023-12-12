# testN10.cy
# Aplas2018 #10
# Valid
#
# factor is not used
# NKresult: 0.11s
# Changeset04: 11.741s
#

x <> y && lsa(x,y,y) |- ls(x,y) * ls(y,y)

---
ls(x,y) := x -> (y) | Ex z (x -> (z) * ls(z,y))
lsa(x,y,z) := x = z && x -> (y) | Ex w (x = z && x -> (w) * lsa(w,y,w)) | Ex w (x -> (w) * lsa(w,y,z))