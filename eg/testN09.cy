# testN09.cy
# Aplas2018 #09
# Invalid
#
# factor is not used
# NKresult: 0.08s
#

ls(x,y) |- lsa(x,y,y)

---
ls(x,y) := x -> (y) | Ex z (x -> (z) * ls(z,y))
lsa(x,y,z) := x = z && x -> (y) | Ex w (x = z && x -> (w) * lsa(w,y,w)) | Ex w (x -> (w) * lsa(w,y,z))