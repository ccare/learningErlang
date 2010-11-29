-module(for).
-export([erlfor/4]).

% implement c-style for loop
% for (int i = 0; i < 12; i++) { sum += f(i) }

erlfor(I, MAX, F, Sum) when I < MAX ->
	erlfor(I+1, MAX, F, Sum + F(I));
erlfor(I, MAX, F, Sum) -> Sum.


