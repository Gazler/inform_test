-module(inform_test).

-export([request/0]).

%%
request() ->
	Start = erlang:system_time(second),
	case hackney:request(get, "http://127.0.0.1:8080", [], "", []) of
		{ok, Status, Headers, Client} ->
			{ok, _} = hackney:body(Client),
			hackney:close(Client),
			End = erlang:system_time(second),
			erlang:display({(End - Start), Status, Headers});
		{error, Errors} ->
			erlang:display({error, Errors})
	end.

