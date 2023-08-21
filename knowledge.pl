female(female).
male(male).
straight(female).
straight(male).
intersex(intersex).
asexual(asexual).
aromantic(aromantic).
can_reproduce(X,Y):-(male(X),female(Y));(male(Y),female(X)),X\=Y.
like_one_side_romantically(X,_):-alloromantic(X).
like_one_side_sexually(X,_):-allosexual(X).
alloromantic(X):-not(aromantic(X)).
allosexual(X):-not(asexual(X)).
