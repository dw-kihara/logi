%% @copyright 2014 Takeru Ohta <phjgt308@gmail.com>
%%
%% @doc TODO
%% @private
-module(logi_util_assoc).

%%------------------------------------------------------------------------------------------------------------------------
%% Exported API
%%------------------------------------------------------------------------------------------------------------------------
-export([
         fetch/3
        ]).

%%------------------------------------------------------------------------------------------------------------------------
%% Exported Functions
%%------------------------------------------------------------------------------------------------------------------------
%% TODO: doc
-spec fetch(term(), list(), term()) -> term().
fetch(Key, List, Default) ->
    case lists:keyfind(Key, 1, List) of
        {_, Value} -> Value;
        _          -> Default
    end.
