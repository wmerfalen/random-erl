% compile in interactive erl session: c(fib.erl).
% run with: fib:calc(N). where N is the amount of fibonacci numbers to generate
-module(fib).
-export([calc/1]).

main(_,_,C) when C =:= 0 -> nil ;
main(Now,Prev,Count) when Count > 0 -> 
    io:format("~p\n",[Now+Prev]),
    Next = Prev + Now,
    main(Prev,Next,Count - 1).

calc(Count) ->
    main(0,1,Count).
