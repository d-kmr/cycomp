# testH01.cy
# Harrish example #1
# Invalid
#

sll(x1,x2) |- odd(x1,x2)

---
sll(x,y) := x -> (y) | Ex z (x -> (z) * sll(z,y))
odd(x,y) := x -> (y) | Ex z (x -> (z) * even(z,y))
even(x,y) := Ex z (x -> (z) * odd(z,y))