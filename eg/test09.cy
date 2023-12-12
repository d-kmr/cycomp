# 2018.09.27
# valid

treehole(x,y) * tree(y) |- tree(x)

---
tree(x) := x -> (Nil,Nil) | Ex y (x -> (y,Nil) * tree(y)) | Ex y (x -> (Nil,y) * tree(y)) | Ex y,z (x -> (y,z) * tree(y) * tree(z))
treehole(x,y) := x -> (y,Nil) | x -> (Nil,y) | Ex z,w (x-> (z,w) * tree(z) * treehole(w,y)) | Ex z,w (x-> (z,w) * treehole(z,y) * tree(w))
