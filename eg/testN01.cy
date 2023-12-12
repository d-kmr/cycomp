# testN01.cy
# Aplas2018 #1
# Valid
#
# factor is used
# NKresult: 0.02s
#
# changeset04 0.285s (2018.08.13)

two(x,y) |- two(y,x)

---
to(x,y) := x -> (y)
two(x,y) := Ex z (y = z && x -> (z) * to(z,x))