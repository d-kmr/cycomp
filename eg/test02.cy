x -> (z) * y -> (Nil)
|-
y -> (Nil) 
---
lsa(u,v,w) :=
  u=w && u->(v)
  | Ex z (u=w && u->(z) * lsa(z,v,z))
  | Ex z (u->(z) * lsa(z,v,w))