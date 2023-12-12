# 2018.05.18
# valid

x <> y && ls(x,x) & Dn(y) |- ls(y,y)
---
ls(x,y) := x -> (y) | Ex z (x -> (z) * ls(z,y))