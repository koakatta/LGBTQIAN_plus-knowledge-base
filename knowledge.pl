female(female).
male(male).
straight(female).
straight(male).
intersex(intersex).
asexual(asexual).
aromantic(aromantic).
androsexual(androsexual).
autoromantic(autoromantic).
gay(gay).
gynesexual(gynesexual).
can_reproduce(X,Y):-(male(X),female(Y));(male(Y),female(X)),X\=Y.
like_one_side_romantically(X,Y):-ako(X,alloromantic).
like_one_side_sexually(X,Y):-ako(X,allosexual);(androsexual(X);gay(X),male(Y));(gynesexual(X);lesbian(x),female(Y)).
like_one_side_romantically(bicurious,_):-print(uncertain),false().
like_one_side_sexually(bicurious,_):-print(uncertain),false().
like_one_side_romantically(homoromantic,X,Y):-ako(X,alloromantic).
like_one_side_sexually(homosexuality,X,Y):-%add
like_one_side_romantically(Heteroromantic,X,Y):-X!=Y.
like_one_side_sexually(Heterosexuality,X,Y):-X!=Y.
alloromantic(X):-not(aromantic(X));not(ako(X,aromantic)).
allosexual(X):-not(asexual(X));not(ako(X,asexual)).
ako(autoromantic,allosexual).
ako(biromantic,allosexual).
ako(bisexual,allosexual).
ako(demiromantic,asexual).%add ask for more info
ako(gay,monosexual).
ako(heterosexuality,monosexual).
ako(lesbian,monosexual).
ako(bisexual,multisexual).
ako(omnisexual,multisexual).
ako(pansexual,allosexual).
ako(omnisexual,allosexual).
ako(polysexual,allosexual).
ako(lesbian,queer).
ako(gay,queer).
ako(bisexual,queer).
ako(transsexual,queer).
ako(queer,queer).
ako(intersex,queer).
ako(asexual,queer).
ako(non_binary,queer).
ako(sexual_fluid,allosexual).
ako(skoliosexual,allosexual).
ako(spectrasexual,allosexual).
