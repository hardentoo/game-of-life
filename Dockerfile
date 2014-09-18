FROM        darinmorrison/haskell
MAINTAINER  Andrew Rademacher <andrewrademacher@gmail.com>

RUN apt-get update
RUN apt-get install freeglut3-dev -y

RUN git clone https://github.com/AndrewRademacher/game-of-life.git
RUN cd game-of-life

RUN cabal update
RUN cabal configure -f llvm
RUN cabal install
