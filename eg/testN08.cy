# testN08.cy
# Aplas2018 #08
# Valid
#
# factor is not used
# NKresult: 0.44s
# Changeset04: 
#

ls(x,y) |- lsa(x,y,x)

---
ls(x,y) := x -> (y) | Ex z (x -> (z) * ls(z,y))
lsa(x,y,z) := x = z && x -> (y) | Ex w (x = z && x -> (w) * lsa(w,y,w)) | Ex w (x -> (w) * lsa(w,y,z))