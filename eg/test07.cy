# test07.cy
# 
x -> (y) * ls(y,z) * z -> (Nil)
|-
ls(x,y) * ls(y,z) * ls(z,x)

---
ls(x,y) :=
	x -> (y) 
	| Ex z (x -> (z) * ls(z,y))
