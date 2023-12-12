# test06.cy
# 
bts(x,y) * tr(y)
|-
tr(x)

---
bts(x,y) :=
    Ex z (x -> (y,z) * tr(z))
	| Ex z (x -> (z,y) * tr(z))
	| Ex z,w (x -> (z,w) * bts(z,y) * tr(w))
	| Ex z,w (x -> (z,w) * tr(z) * bts(w,y))
tr(x) :=
	x -> (Nil,Nil)
	| Ex y,z (x -> (y,z) * tr(y) * tr(z))