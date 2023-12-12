# 2018.09.27
# valid

ls(x,Nil) |- tree(x)

---
ls(x,y) := x -> (Nil,y) | Ex z (x -> (Nil,z) * ls(z,y))
tree(x) := x -> (Nil,Nil) | Ex y (x -> (y,Nil) * tree(y)) | Ex y (x -> (Nil,y) * tree(y)) | Ex y,z (x -> (y,z) * tree(y) * tree(z))

