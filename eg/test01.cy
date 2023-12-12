# test01.cy
# 
ls(x,y) * ls(y,x)
|-
ls(x,x)

---
ls(x,y) := x -> (y)	| Ex z (x -> (z) * ls(z,y))

