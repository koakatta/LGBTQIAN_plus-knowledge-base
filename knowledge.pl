female(female).
male(male).
straight(female).
straight(male).
intersex(intersex).
asexual(asexual).
aromantic(aromantic).
can_reproduce(X,Y):-(male(X),female(Y));(male(Y),female(X)),X\=Y.
