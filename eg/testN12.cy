# testN12.cy
# Aplas2018 #12
# Valid
#
# factor is used
# NKresult: 25.27s
# Changeset04: 31.374s
#

lsa(x,x,y) |- lsa(y,y,x)

---
lsa(x,y,z) := x = z && x -> (y) | Ex w (x = z && x -> (w) * lsa(w,y,w)) | Ex w (x -> (w) * lsa(w,y,z))