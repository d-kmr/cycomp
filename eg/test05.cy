# test05.cy
# 
x -> (Nil,Nil) 
|-
tr2(x)

---
tr2(x) :=
    x->(Nil,Nil)
	| Ex y,z (x -> (y,z) * tr2(y) * tr2(z))
	| Ex y (x -> (y,Nil) * ls(y))
ls(x) :=
	x -> (Nil,Nil)
	| Ex z (x -> (z,Nil) * ls(z))