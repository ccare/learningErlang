-module(fac).
-export([factorial/1, tailfac/1]).

factorial(0) -> 1;
factorial(N) -> N * factorial(N-1).

tailfac(N) -> tf(N, 1).

tf(0, X) -> X;
tf(N, X) -> tf(N-1, N*X).
