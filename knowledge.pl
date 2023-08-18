female(f).
male(m).
heterosexual(x):-straight(x)
can_reproduce(x,y):-heterosexual(x),heterosexual(y).