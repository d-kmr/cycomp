# testH02.cy
# Harrish example #02
# Valid
#

even(x1,x2) |- sll(x1,x2)

---
sll(x,y) := x -> (y) | Ex z (x -> (z) * sll(z,y))
odd(x,y) := x -> (y) | Ex z (x -> (z) * even(z,y))
even(x,y) := Ex z (x -> (z) * odd(z,y))