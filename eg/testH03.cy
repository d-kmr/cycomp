# testH03.cy
# Harrish example #03
# Invalid
#

rtree(x1,x2,x3) |- ltree(x1,x2,x3)

---
ltree(x1,x2,x3) := Ex p (x1 -> (nil,nil,p) * lltree(p,x1,x2,x3))
lltree(x1,x2,x3,x4) := Ex r,p (x1 -> (x2, r, p) * tree(r,x1) * lltree(p,x1,x3,x4)) | Ex r (x1 -> (x2, r, x3) * tree(r,x1) * lroot(x3,x1,x4))
lroot(x1,x2,x3) := Ex r (x1 -> (x2,r,x3) * tree(r,x1))
rtree(x1,x2,x3) := Ex r (x1 -> (x3,r,x2) * parent(x3,x1) * tree(r,x1)) | Ex l,r (x1 -> (l,r,x2) * rtree(l,x1,x3) * tree(r,x1))
tree(x1,x2) := x1 -> (nil, nil, x2) | Ex y,z (x1 -> (y, z, x2) * tree(y, x1) * tree(z, x1))
parent(x1,x2) := x1 -> (nil,nil,x2)