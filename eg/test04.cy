# test04.cy
# 
x -> (y,z) * tr(y) * z -> (Nil,Nil)
|-
tr(x)

---
tr(x) := x->(Nil,Nil) | Ex y,z (x -> (y,z) * tr(y) * tr(z))
