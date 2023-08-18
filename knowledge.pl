female(female).
male(male).
straight(female).
straight(male).
intersex(intersex).
heterosexual(X):-straight(X).
can_reproduce(X,Y):-(male(X),female(Y));(male(Y),female(X)),X\=Y.
